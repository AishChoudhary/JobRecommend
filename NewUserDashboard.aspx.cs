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
    public partial class NewUserDashboard : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        string uid;
        protected void Page_Load(object sender, EventArgs e)
        {

            string email, username;
            email = (string)Session["email"];
            username = (string)Session["uname"];
            uid = (string)Session["uid"];

            if (email == null)
                Response.Redirect("UserLogin.aspx");
            else
            {
                lblUname.Text = username;
                getResult();

                //loadRecommendedJobs();
            }

        }


        private void loadRecommendedJobs()
        {
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select (select id from NewRequirement where id =rks.pid)as'pid',(select jobtitle from NewRequirement where id =rks.pid)as'jobtitle',(select WorkExperiance from NewRequirement where id =rks.pid)as'WorkExp' from Requirementkeyskill rks where key_skill_id in (select   key_skill_id  from KeySkillInfo where uid=" + Session["uid"]+ " ) order by  pid desc )", connection);
                DataSet ds = new DataSet();
                sqlDataAdapter.Fill(ds);
                connection.Close();
                DataTable dt = ds.Tables[0];
              /*  GridView1.AutoGenerateColumns = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();*/
            }
        }
        private void getResult()
        {
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from TestResultInfo where uid=" + Session["uid"], connection);
                DataSet ds = new DataSet();
                sqlDataAdapter.Fill(ds);
                connection.Close();

                DataTable dt = ds.Tables[0];

                if (dt.Rows.Count > 0)
                    lblJava.Text = "Java Score: " + dt.Rows[0].ItemArray[2].ToString();
                else
                {
                    lblJava.Text = "Not Attended";
                    Session["uid"] = uid;
                }
            }
        }
    }
}