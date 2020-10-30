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
    public partial class MyPosts : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string email, username;
            email = (string)Session["email"];
            username = (string)Session["uname"];


            if (email == null)
                Response.Redirect("NewRecruiterDashboard.aspx");
            else
            {
                lblUname.Text = username;

            }
        }

        private void loadMyPosts()
        {
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from NewRequirement where rid=" + Session["uid"], connection);
                DataSet ds = new DataSet();
                sqlDataAdapter.Fill(ds);
                connection.Close();

                DataTable dt = ds.Tables[0];
            }
        }
    }
}