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

                sql = "insert into notification(rid,uid,not_text,not_date,status,not_flag,user_flag)"+"values("+getRidFromPid(pid)+","+uid+",'A user has applied to job',GETDATE(),'UNREAD',1,1)";
                 sqlcommand = new SqlCommand(sql, connection);
                 x = sqlcommand.ExecuteNonQuery();

                bool b = new NetworkCom().SendEmail(getEmailFromUid(uid), "Job Application", "You have applied to job recently");
                bool a = new NetworkCom().SendEmail(getEmailFromUidRecruiter(getRidFromPid(pid)), "Job Application", "A User has applied to your job recently");
                connection.Close();
                

                if (x > 0)
                    Response.Write("<Script>alert('You have applied to this job successfully');window.location='jobrecommended.aspx'</Script>");

                else
                    Response.Write("<Script>alert('Unable to Apply');</Script>");
            }

        }

        private string getRidFromPid(string pid)
        {
           
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from NewRequirement where id=" + pid, connection);
            DataSet ds = new DataSet();
            sqlDataAdapter.Fill(ds);
           

            DataTable dt = ds.Tables[0];

            return dt.Rows[0].ItemArray[1].ToString();

        }

        private string getEmailFromUid(string uid)
        {

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select email from UserInfo where id=" + uid, connection);
            DataSet ds = new DataSet();
            sqlDataAdapter.Fill(ds);


            DataTable dt = ds.Tables[0];

            return dt.Rows[0].ItemArray[0].ToString();

        }

        private string getEmailFromUidRecruiter(string uid)
        {

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select email from Recruiter where id=" + uid, connection);
            DataSet ds = new DataSet();
            sqlDataAdapter.Fill(ds);


            DataTable dt = ds.Tables[0];

            return dt.Rows[0].ItemArray[0].ToString();

        }

        /*private string getjobdetailsfrompid(string rid)
        {

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select Jobtitle,JobDescription,WorkExperiance,Salary from NewRequirement where rid=" + rid, connection);
            DataSet ds = new DataSet();
            sqlDataAdapter.Fill(ds);


            DataTable dt = ds.Tables[0];

            return dt.Rows[0].ItemArray[0].ToString();

        } */

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