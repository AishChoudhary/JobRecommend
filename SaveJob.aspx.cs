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
    public partial class SaveJob : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string jobid = Request.QueryString["pid"];
                string uid = (string)Session["uid"];

                if (isAlreadySaved(uid, jobid) > 0)
                    Response.Write("<Script>alert('You have already saved to this job');window.location='SavedJobs.aspx'</Script>");
                else
                {
                    string sql = "insert into Savedjobs(uid,jobid)" +
        "values(" + uid + "," + jobid + ")";

                    connection.Open();
                    SqlCommand sqlcommand = new SqlCommand(sql, connection);
                    int x = sqlcommand.ExecuteNonQuery();
                    connection.Close();

                    if (x > 0)
                        Response.Write("<Script>alert('You have saved this job successfully');window.location='NewUserDashboard.aspx'</Script>");

                    else

                        Response.Write("<Script>alert('Unable to Save');</Script>");
                }
            }
        }
        private int isAlreadySaved(string uid, string jobid)
        {
            connection.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from Savedjobs where uid=" + uid + " and jobid=" + jobid, connection);
            DataSet ds = new DataSet();
            sqlDataAdapter.Fill(ds);
            connection.Close();

            DataTable dt = ds.Tables[0];

            return dt.Rows.Count;
        }
    }
}