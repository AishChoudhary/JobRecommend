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
    public partial class invite : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        string rid, uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            rid = (string)Session["uid"];
            uid = (string)Request.QueryString["uid"];

            string email, username;
            email = (string)Session["email"];
            username = (string)Session["uname"];
            if (email == null)
                Response.Redirect("RecruiterLogin.aspx");
            else
                lblUname.Text = username;


        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            connection.Open();
            string  pid;
            //uid = (string)Session["uid"];
            pid = (string)Request.QueryString["pid"];
            string sql = "insert into notification(rid,uid,not_text,not_date,status,not_flag,user_flag)" + "values(" + Session["uid"] + "," + Request.QueryString["uid"] + ",'A Job Invitation from Recruiter',GETDATE(),'UNREAD',2,2)";
            SqlCommand sqlcommand = new SqlCommand(sql, connection);
            int x = sqlcommand.ExecuteNonQuery();

            sql = "insert into invitations(rid,uid,message,status)" + "values(" + Session["uid"] + "," + Request.QueryString["uid"] + ",'" + txtMsg.Text + "','PENDING')";
            sqlcommand = new SqlCommand(sql, connection);
             x = sqlcommand.ExecuteNonQuery();

            bool b = new NetworkCom().SendEmail(getEmailFromUid(uid), "Job Application", "You have applied to job recently");
            bool a = new NetworkCom().SendEmail(getEmailFromUidRecruiter(getRidFromPid(pid)), "Job Application", "A User has applied to your job recently");


            connection.Close();


            if (x > 0)
                Response.Write("<Script>alert('Invitation sent Successfully '); window.location('ViewApplications.aspx?pid="+ Request.QueryString["pid"] +"');</Script>");

            else
                Response.Write("<Script>alert('Unable to Invite');</Script>");
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
        private string getRidFromPid(string pid)
        {

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from NewRequirement where id=" + pid, connection);
            DataSet ds = new DataSet();
            sqlDataAdapter.Fill(ds);


            DataTable dt = ds.Tables[0];

            return dt.Rows[0].ItemArray[1].ToString();

        }

    }
}