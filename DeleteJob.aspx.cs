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
    public partial class DeleteJob : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string jobid = Request.QueryString["pid"];
            string uid = (string)Session["uid"];



            connection.Open();
            string sql = "delete from Savedjobs where jobid = " + jobid;
            SqlCommand sqlcommand = new SqlCommand(sql, connection);
            int x = sqlcommand.ExecuteNonQuery();

            

            connection.Close();


            if (x > 0)
                Response.Write("<Script>alert('You have deleted this job successfully');window.location='NewUserDashboard.aspx'</Script>");

            else
                Response.Write("<Script>alert('Unable to Delete');</Script>");


        }
    }
}