using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class RecruiterSignUp : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        string Fullname, Email, Password, MobileNo,City,State;

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        private void readvalue()
        {
            Fullname = txtFullName.Text;
            Email = txtEmail.Text;
            Password = txtPassword.Text;
            MobileNo = txtMobileNo.Text;
            City = txtCity.Text;
            State = txtState.Text;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Registered Successfully Click OK to Login');window.location='RecruiterLogin.aspx';</script>");
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {
                readvalue();
                SqlCommand sqlcommand = new SqlCommand("insert into Recruiter(Fullname,Email,Password,MobileNo,City,State) values('" + Fullname + "','" + Email + "','" + Password + "','" + MobileNo + "','" + City + "','" + State + "')", connection);
                int x = sqlcommand.ExecuteNonQuery();

                if (x > 0)
                    Response.Write("<Script>alert('User registered successfully');window.location='RecruiterLogin.aspx'</Script>");

                else
                    Response.Write("<Script>alert('Unable to connect');</Script>");
            }

            else
                Response.Write("<Script>alert('Connection Failed');</Script>");
        }
    }
    
}