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
    public partial class invite : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string rid, uid;
            rid = (string)Session["uid"];
            uid = (string)Request.QueryString["uid"];


        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            connection.Open();
            string sql = "insert into notification(rid,uid,not_text,not_date,status,not_flag,user_flag)" + "values(" + Session["uid"] + "," + Request.QueryString["uid"] + ",'A Job Invitation from Recruiter',GETDATE(),'UNREAD',2,2)";
            SqlCommand sqlcommand = new SqlCommand(sql, connection);
            int x = sqlcommand.ExecuteNonQuery();

            sql = "insert into invitations(rid,uid,message,status)" + "values(" + Session["uid"] + "," + Request.QueryString["uid"] + ",'" + txtMsg.Text + "','PENDING')";
            sqlcommand = new SqlCommand(sql, connection);
             x = sqlcommand.ExecuteNonQuery();

            connection.Close();


            if (x > 0)
                Response.Write("<Script>alert('Invitation sent Successfully '); window.location('ViewApplications.aspx?pid="+ Request.QueryString["pid"] +"');</Script>");

            else
                Response.Write("<Script>alert('Unable to Invite');</Script>");
        }
    }
}