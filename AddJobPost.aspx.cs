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
    public partial class AddJobPost : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        string Jobtitle, JobDescription, SkillsRequired, WorkExperiance, JobLocation,Rank, Roles, MinQual,OpeningDate,ClosingDate;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string email, username;
                email = (string)Session["email"];
                username = (string)Session["uname"];
                if (email == null)
                    Response.Redirect("NewRecruiterDashboard.aspx");
                else
                {
                    lblUname.Text = username;
                    loadkeySkills();
                }
            }
        }

        private void loadkeySkills()
        {
            connection.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from KeySkills ", connection);
            DataSet ds = new DataSet();
            sqlDataAdapter.Fill(ds);
            connection.Close();

            DataTable dt = ds.Tables[0];
            lstKeySkills.DataSource = dt;
            lstKeySkills.DataTextField = "Keyskill";
            lstKeySkills.DataValueField = "id";
            lstKeySkills.DataBind();
        }

        private string getPostId(string rid)
        {
     
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select max(id) as 'pid' from NewRequirement where rid="+rid, connection);
            DataSet ds = new DataSet();
            sqlDataAdapter.Fill(ds);

            DataTable dt = ds.Tables[0];
            return dt.Rows[0].ItemArray[0].ToString();

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            connection.Open();
            if (connection.State == ConnectionState.Open)
            {

                string uid = (string)Session["uid"];


                string sql = "insert into NewRequirement(rid,Jobtitle, JobDescription,  WorkExperiance, JobLocation, Roles,Rank, MinQual, Salary, OpeningDate, ClosingDate)" +
                "values(" + uid + ",'" + txtJobTitle.Text + "', '" + txtJobDescription.Text + "','" + txtworkexp.Text + "','" + txtJobLocation.Text + "','" + txtRoles.Text + "','" + txtRank.Text + "','" + txtminQual.Text + "',"+txtSal.Text+",'" + txtDate.Text + "','" + TxtClosingDate.Text + "')";
                SqlCommand sqlcommand = new SqlCommand(sql, connection);
                int x = sqlcommand.ExecuteNonQuery();

                foreach (ListItem li in lstKeySkills.Items)
                {
                    if (li.Selected)
                    {
                        string key_skill_id = li.Value;

                        sql = "insert into Requirementkeyskill(pid,key_skill_id)" +
        "values(" + getPostId(uid) + "," + key_skill_id + ")";

                        sqlcommand = new SqlCommand(sql, connection);
                        x = sqlcommand.ExecuteNonQuery();


                    }
                }
                connection.Close();

                if (x > 0)
                    Response.Write("<Script>alert('job posted successfully');window.location='NewRecruiterDashboard.aspx'</Script>");

                else
                    Response.Write("<Script>alert('Unable to create');</Script>");
            }
        }
    }
}