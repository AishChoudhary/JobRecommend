using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;

namespace JobRecommend
{
    public partial class RecForgotPassword : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        string Email, Password, NewPassword;

        static int otp;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtOtp.Enabled = false;
            txtNewPwd.Enabled = false;
            txtNewPwd1.Enabled = false;
            Image1.Visible = false;
        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {
            Image1.Visible = true;
            Image1.ImageUrl = "~/img/close.png";
            if (IsValidEmail(txtEmail.Text))
            {
                if (isEmailExist(txtEmail.Text))
                {
                    Image1.ImageUrl = "~/img/check.png";
                    txtOtp.Enabled = true;

                    Random rnd = new Random();
                    otp = rnd.Next(1111, 9999);

                    sendEmail();
                    // txtOtp.Text = otp+"";
                    System.Diagnostics.Debug.Print("" + otp);


                }
            }
        }

        private void updatePassword()
        {

            connection.Open();
            if (connection.State == ConnectionState.Open)
            {

                SqlCommand cmd = new SqlCommand("update Recruiter set password='" + txtNewPwd.Text + "' where email='" + txtEmail.Text + "'", connection);
                int x = cmd.ExecuteNonQuery();

                if (x > 0)
                    Response.Write("<script>alert('Password updated successfully');window.location='RecruiterLogin.aspx';</script>");
                else
                    Response.Write("<script>alert('Unable to update password');</script>");

            }
        }

        private bool sendEmail()
        {
            string email = "aishchoudhary205@gmail.com";
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(email);
            msg.To.Add(txtEmail.Text);
            msg.Subject = "Your otp";
            msg.Body = "Your Otp for password reset is:" + otp;
            //msg.Bo"Your Otp for password reset is:" + otp

            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = email; //Your Email ID  
            ntwd.Password = "arnav205"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);


            return true;
        }

        private void readvalue()
        {
            Email = txtEmail.Text;
            Password = txtNewPwd.Text;
            NewPassword = txtNewPwd1.Text;
        }

        private bool isEmailExist(string email)
        {
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from Recruiter where email='" + email + "'", connection);
                DataSet ds = new DataSet();
                sqlDataAdapter.Fill(ds);

                DataTable dt = ds.Tables[0];

                int recordCount = dt.Rows.Count;

                if (recordCount > 0)
                {
                    /*string uname = dt.Rows[0].ItemArray[1].ToString();
                    //string uid = dt.Rows[0].ItemArray[0].ToString();
                    Session["email"] = txtEmail.Text;
                    //Session["uname"] = uname;
                    //Session["uid"] = uid;

                    Response.Write("<script>alert('Login Successfull Click Ok to Proceed');window.location='NewRecruiterDashboard.aspx?uname=" + uname + "';</script>");*/

                    return true;
                }

                else
                    return false;
                //Response.Write("<Script>alert('Connection Failed');</Script>");

            }

            return false;
        }

        protected void txtOtp_TextChanged(object sender, EventArgs e)
        {
            if (isValidOtp(txtOtp.Text))
            {
                System.Diagnostics.Debug.Print("opt:" + otp + "--" + "uotp" + txtOtp.Text);
                if (txtOtp.Text == otp.ToString())
                {
                    txtNewPwd.Enabled = true;
                    txtNewPwd1.Enabled = true;
                }
            }

        }

        private bool isValidOtp(string sOtp)
        {
            if (sOtp.All(char.IsDigit))
                return true;
            else
                return false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtNewPwd.Text == txtNewPwd1.Text)
            {
                updatePassword();
            }
            else
                Response.Write("<script>alert(Password and confirm password do not match');</script>");

        }

        bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }
    }
}