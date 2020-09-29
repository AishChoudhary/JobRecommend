using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class ForgotPassword : System.Web.UI.Page
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

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from Userinfo where email='" + txtEmail.Text + "' and Password='" + txtNewPwd.Text + "'", connection);
                DataSet ds = new DataSet();
                sqlDataAdapter.Fill(ds);

                DataTable dt = ds.Tables[0];

                int recordCount = dt.Rows.Count;

                if (recordCount > 0)
                {
                    string uname = dt.Rows[0].ItemArray[1].ToString();
                    //string uid = dt.Rows[0].ItemArray[0].ToString();
                    Session["email"] = txtEmail.Text;
                    //Session["uname"] = uname;
                    //Session["uid"] = uid;

                    Response.Write("<script>alert('Login Successfull Click Ok to Proceed');window.location='NewUserDashboard.aspx?uname=" + uname + "';</script>");
                }

                else
                    Response.Write("<Script>alert('Connection Failed');</Script>");
            }
        }
    }
}