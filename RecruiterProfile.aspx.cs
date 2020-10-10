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
	public partial class RecruiterProfile : System.Web.UI.Page
	{
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        string CompanyName, WorkingAs, CompLocation;
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {

                string uid = (string)Session["uid"];


                string sql = "insert into RecruiterProfile(uid,CompanyName,WorkingAs,CompLocation)" +
"values(" + uid + ",'" + txtCompanyNm.Text + "', '" + txtWorking.Text + "','" + txtCompLoc.Text + "')";
                SqlCommand sqlcommand = new SqlCommand(sql, connection);
                int x = sqlcommand.ExecuteNonQuery();

                if (x > 0)
                    Response.Write("<Script>alert('User Profile Created successfully');window.location='NewRecruiterDashboard.aspx'</Script>");

                else
                    Response.Write("<Script>alert('Unable to create');</Script>");
            }
        }
    }
}