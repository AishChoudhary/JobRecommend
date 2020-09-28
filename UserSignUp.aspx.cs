using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        string Fullname, Email, Password, MobileNo, City;

        protected void txtConfirmPassword_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtMobileNo_TextChanged(object sender, EventArgs e)
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
            
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {
               
                readvalue();
                string sql = "insert into UserInfo(Fullname,Email,Password,MobileNo,city) values('" + Fullname + "','" + Email + "','" + Password + "','" + MobileNo + "','" + City + "')";
                SqlCommand sqlcommand = new SqlCommand(sql, connection);
                int x = sqlcommand.ExecuteNonQuery();
                                
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