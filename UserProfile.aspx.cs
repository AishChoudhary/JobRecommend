using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class UserProfile : System.Web.UI.Page
    {
        
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        string Address,Marks10,Marks12,CurrentQual,HighestQual,DesiredLoc,Certifications,Interests,WorkDuration,JobTitle,CompanyName,Salary;

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string email, username;
                email = (string)Session["email"];
                username = (string)Session["uname"];
                if (email == null)
                    Response.Redirect("NewUserDashboard.aspx");
                else
                {
                    lblUname.Text = username;
                    DropDownList1.SelectedIndex = 0;
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (address_consent.Checked)
            {
                connection.Open();
                if (connection.State == System.Data.ConnectionState.Open)
                {

                    string uid = (string)Session["uid"];
                    int sal = 0;

                    if (DropDownList1.SelectedIndex == 1)
                        sal = Convert.ToInt32(txtSal.Text);


                    if (FileUpload1.HasFile)
                    {
                        try
                        {
                            string filename = Path.GetFileName(FileUpload1.FileName);
                            FileUpload1.SaveAs(Server.MapPath("~/files/") + filename);


                            string sql = "insert into UserProfile(uid,Address,Marks10,Marks12,CurrentQual,HighestQual,DesiredLoc,Certifications,Interests,CompanyName,WorkDuration,JobTitle,Salary,ResumePath)" +
                "values(" + uid + ",'" + txtAddress.Text + "', " + txtMarks.Text + "," + txtMarks1.Text + ", '" + txtCurrentQualification.Text + "', '" + txtHighestQualification.Text + "', '" + txtLocation.Text + "', '" + txtCertifications.Text + "', '" + txtInterests.Text + "', '" + txtCompName.Text + "', '" + txtWorkDur.Text + "', '" + txtJobTitle.Text + "', " + sal + ",'" + filename + "')";
                            // System.Diagnostics.Debug.Print(sql);
                            SqlCommand sqlcommand = new SqlCommand(sql, connection);
                            int x = sqlcommand.ExecuteNonQuery();

                            foreach (ListItem li in lstKeySkills.Items)
                            {
                                if (li.Selected)
                                {
                                    string key_skill_id = li.Value;

                                    sql = "insert into KeySkillInfo(uid,key_skill_id)" +
                    "values(" + uid + "," + key_skill_id + ")";

                                    sqlcommand = new SqlCommand(sql, connection);
                                    x = sqlcommand.ExecuteNonQuery();


                                }
                            }

                            connection.Close();
                            if (x > 0)
                                Response.Write("<Script>alert('User Profile Created successfully');window.location='NewUserDashboard.aspx'</Script>");

                            else
                                Response.Write("<Script>alert('Unable to create');</Script>");



                        }
                        catch (Exception ex)
                        {
                            System.Diagnostics.Debug.Print(ex.ToString());
                            Response.Write("<script>alert('The file could not be uploaded');</script>");
                        }
                    }

                }


            }
            else
                Response.Write("<script>alert('Please accept the terms');</script>");
        }
        
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 1)
            {
                
                txtCompName.Enabled = true;
                txtWorkDur.Enabled = true;
                txtJobTitle.Enabled = true;
                txtSal.Enabled = true;

                bool flag = true;
                RegularExpressionValidator7.Enabled = flag;
                RegularExpressionValidator9.Enabled = flag;
                RegularExpressionValidator10.Enabled = flag;
                RegularExpressionValidator11.Enabled = flag;


            }
            else
            {
                txtCompName.Enabled = false;
                txtWorkDur.Enabled = false;
                txtJobTitle.Enabled = false;
                txtSal.Enabled = false;
                bool flag = false;
                RegularExpressionValidator7.Enabled = flag;
                RegularExpressionValidator9.Enabled = flag;
                RegularExpressionValidator10.Enabled = flag;
                RegularExpressionValidator11.Enabled = flag;


            }
            DropDownList1.Focus();

        }
    }
}