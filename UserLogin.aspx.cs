using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        string Email, Password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void readvalue()
        {

            Email = txtEmail.Text;
            Password = txtPassword.Text;
        }
        

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            connection.Open();
            if (connection.State == ConnectionState.Open)
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from Userinfo where email='" + txtEmail.Text + "' and Password='" + txtPassword.Text + "'", connection);
                DataSet ds = new DataSet();
                sqlDataAdapter.Fill(ds);

                DataTable dt = ds.Tables[0];

                int recordCount = dt.Rows.Count;

                if (recordCount > 0)
                {
                    string uname = dt.Rows[0].ItemArray[1].ToString();
                    string uid = dt.Rows[0].ItemArray[0].ToString();
                    Session["email"] = txtEmail.Text;
                    Session["uname"] = uname;
                    Session["uid"] = uid;

                    Response.Write("<script>alert('Login Successfull Click Ok to Proceed');window.location='NewUserDashboard.aspx?uname="+uname+"';</script>");
                }
                
                else
                    Response.Write("<script>alert('Invalid Credentials');</script>");

            }
        }
    }
}