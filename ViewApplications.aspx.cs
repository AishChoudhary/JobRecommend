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
    public partial class ViewApplications : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string uid, pid;
            uid = (string)Session["uid"];
            pid = (string)Request.QueryString["pid"];


            string sql = "select uid,(select FullName from UserInfo where id=aj.uid)as'UserName',appliedDate from ApplyJob aj where pid="+pid;
            connection.Open();
            SqlCommand sqlcommand = new SqlCommand(sql, connection);
            int x = sqlcommand.ExecuteNonQuery();
            connection.Close();

            if (x > 0)
                Response.Write("<Script>alert('You have viewed this post please ok to go back');window.location='MyPosts.aspx'</Script>");

            else
                Response.Write("<Script>alert('Unable to show');</Script>");

        }
    }
}