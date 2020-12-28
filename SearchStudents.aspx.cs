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
    public partial class searchStudents : System.Web.UI.Page
    {
        public SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        public string sql="";

        protected void Page_Load(object sender, EventArgs e)
        {
            string email, username;
            email = (string)Session["email"];
            username = (string)Session["uname"];
            if (email == null)
                Response.Redirect("RecruiterLogin.aspx");
            else
            {
                if (!IsPostBack)

                {
                    lblUname.Text = username;
                    uncheckRadios();
                    loadQualification();
                    loadscore();
                    loadskill();
                }
            }

        }

        private void loadQualification()
        {

            System.Data.SqlClient.SqlConnection connection1 = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            connection1.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select distinct highestqual from UserProfile", connection1);
            System.Data.DataSet ds1 = new System.Data.DataSet();
            sqlDataAdapter.Fill(ds1);
            connection1.Close();

            DataTable dt1 = ds1.Tables[0];

            lstQual.DataSource = dt1;
            lstQual.DataTextField = "highestqual";
            lstQual.DataValueField = "highestqual";
            lstQual.DataBind();
        }

     

        private void loadscore()
        {
            SqlConnection connection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            connection1.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select distinct SiteScore from UserProfile", connection1);
            DataSet ds1 = new DataSet();
            sqlDataAdapter.Fill(ds1);
            connection1.Close();

            DataTable dt = ds1.Tables[0];
            lstscore.DataSource = dt;
            lstscore.DataTextField = "SiteScore";
            lstscore.DataValueField = "SiteScore";
            lstscore.DataBind();

        }
        private void loadskill()
        {
                SqlConnection connection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
                connection1.Open();
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select id,KeySkill from KeySkills", connection1);
                DataSet ds1 = new DataSet();
                sqlDataAdapter.Fill(ds1);
                connection1.Close();

                DataTable dt1 = ds1.Tables[0];
           
            lstskills.DataSource = dt1;
            lstskills.DataTextField = "KeySkill";
            lstskills.DataValueField = "id";
            lstskills.DataBind();

        }
        private void uncheckRadios()
        {
            RadioButton1.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;

        }

        private int getUserAns()
        {

            if (RadioButton1.Checked)
                return 1;
            if (RadioButton3.Checked)
                return 3;
            if (RadioButton4.Checked)
                return 4;

            return 0;

        }

        private bool checkCheckedOrNot()
        {
            bool check = false;
            if (RadioButton1.Checked)
                check = true;
            if (RadioButton3.Checked)
                check = true;
            if (RadioButton4.Checked)
                check = true;
            return check;
        }
        /*private bool selectedornot()
        {
            bool select = false;
            if (lstQual.SelectedValue)
                select = true;
            if (RadioButton3.)
                select = true;
            if (RadioButton4.Checked)
                select = true;
            return select;
        } */

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!checkCheckedOrNot())
                Response.Write("<script>alert('Please select an option');</script>");
            if (RadioButton1.Checked)
            {
                sql = "select fullname,Email,MobileNo from userinfo where id in (select distinct id from Userprofile where highestqual IN";
                string keyword = "(";
                int counter = 0;
                foreach (ListItem li in lstQual.Items)
                {
                    if (li.Selected)
                    {
                        counter++;
                        keyword += "'" + li.Value + "',";
                    }
                    //MessageBox.Show(item.ToString());
                }
                if(counter==0)
                {
                    sql = "";
                    Response.Write("<script>alert('Please select an option');</script>");
                    return;
                }
                keyword = keyword.Remove(keyword.Length - 1, 1);

                keyword += "))";

                sql = sql + keyword;
            }


            if (RadioButton3.Checked)
            {
                int count = 0;
                sql = "select fullname,Email,MobileNo from userinfo where id in (select distinct uid from KeySkillInfo where key_skill_id in";
                string keyword = "(";
                
                foreach (ListItem li in lstskills.Items)
                {
                    if (li.Selected)
                    {
                        count++;
                        keyword +=   li.Value + ",";
                    }
                    
                    //MessageBox.Show(item.ToString());
                }

                if (count == 0)
                {
                    sql = "";
                    Response.Write("<script>alert('Please select an option');</script>");
                    return;
                }

                keyword = keyword.Remove(keyword.Length - 1, 1);

                keyword += "))";
                
                sql = sql + keyword;
            }
            if (RadioButton4.Checked)
            {
                sql = "select fullname,Email,MobileNo from userinfo where id in (select id from UserProfile where SiteScore IN";
                string keyword = "(";
                int count = 0;
                foreach (ListItem li in lstscore.Items)
                {
                    if (li.Selected)
                    {
                        count++;
                        keyword += "'" + li.Value + "',";
                    }
                    //MessageBox.Show(item.ToString());
                }
                if (count == 0)
                {
                    sql = "";
                    Response.Write("<script>alert('Please select an option');</script>");
                    return;
                }
                keyword = keyword.Remove(keyword.Length - 1, 1);

                keyword += "))";

                sql = sql + keyword;
            }
            //SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sql, conn);

        }

    }

}