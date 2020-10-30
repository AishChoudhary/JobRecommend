using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace JobRecommend
{
    public partial class ApplyJob : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string uid,pid;
            uid = (string)Session["uid"];
           pid = (string) Request.QueryString["pid"];

            if (isAlreadyApplied(uid,pid) > 0)
                Response.Write("<Script>alert('You have already applied to this job');window.location='jobrecommended.aspx'</Script>");
            else
            {
                string sql = "insert into ApplyJob(uid,pid)" +
    "values(" + uid + "," + pid + ")";
                connection.Open();
                SqlCommand sqlcommand = new SqlCommand(sql, connection);
                int x = sqlcommand.ExecuteNonQuery();
                connection.Close();

                if (x > 0)
                    Response.Write("<Script>alert('You have applied to this job successfully');window.location='jobrecommended.aspx'</Script>");

                else
                    Response.Write("<Script>alert('Unable to Apply');</Script>");
            }

        }

        private int isAlreadyApplied(string uid, string pid)
        {
            connection.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from ApplyJob where uid="+uid+ " and pid="+pid, connection);
            DataSet ds = new DataSet();
            sqlDataAdapter.Fill(ds);
            connection.Close();

            DataTable dt = ds.Tables[0];

            return dt.Rows.Count;
        }
    }
}