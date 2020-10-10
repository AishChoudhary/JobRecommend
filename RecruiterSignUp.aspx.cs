using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class RecruiterSignUp : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Server=(Local);Database=JobRecommenderDb;Integrated Security=true");

        string Fullname, Email, Password, MobileNo,City;

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

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Registered Successfully Click OK to Login');window.location='RecruiterLogin.aspx';</script>");
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {
                readvalue();
                SqlCommand sqlcommand = new SqlCommand("insert into Recruiter(Fullname,Email,Password,MobileNo,City) values('" + Fullname + "','" + Email + "','" + Password + "','" + MobileNo + "','" + City + "')", connection);
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