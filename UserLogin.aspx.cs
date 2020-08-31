using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Server=(Local);Database=JobRecommenderDb;Integrated Security=true");

        string Email, Password;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        private void readvalue()
        {

            Email = txtEmail.Text;
            Password = txtPassword.Text;
        }
        protected void btnLogin1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Login Successful');</script>");

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {
                readvalue();
                SqlCommand sqlcommand = new SqlCommand("insert into Recruiter(Email,Password) values('" + Email + "','" + Password + "')", connection);
                int x = sqlcommand.ExecuteNonQuery();

                if (x > 0)
                    Response.Write("<Script>alert('login successful!');</Script>");

                else
                    Response.Write("<Script>alert('Invalid Email or Password');</Script>");
            }

            else
                Response.Write("<Script>alert('Failed to login ');</Script>");
        }
    }
}