using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class RecForgotPassword : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Server=(Local);Database=JobRecommenderDb;Integrated Security=true");
        string Email, Password, NewPassword;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void readvalue()
        {
            Email = txtEmail.Text;
            Password = txtNewPwd.Text;
            NewPassword = txtNewPwd1.Text;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {

                readvalue();
                string sql = "insert into Recruiter(Email,Password) values('"+ Email+"','" + Password + "')";
                SqlCommand sqlcommand = new SqlCommand(sql, connection);
                int x = sqlcommand.ExecuteNonQuery();
                Password = NewPassword;
                Response.Write("<Script>alert('Password changed Successfully');</Script>");
                if (x > 0)
                    Response.Write("<Script>alert('User registered successfully');window.location='UserLogin.aspx'</Script>");

                else
                    Response.Write("<Script>alert('Unable to connect');</Script>");
            }

            else
                Response.Write("<Script>alert('Connection Failed');</Script>");
        }
    }
}