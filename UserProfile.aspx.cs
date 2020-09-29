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
    public partial class UserProfile : System.Web.UI.Page
    {
        //SqlConnection connection = new SqlConnection("Server=(Local);Database=JobRecommenderDb;Integrated Security=true");
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        string Address,Marks10,Marks12,CurrentQual,HighestQual,DesiredLoc,Certifications,Interests,WorkDuration,JobTitle,CompanyName,Salary;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string email, username;
                email = (string)Session["email"];
                username = (string)Session["uname"];
                if (email == null)
                    Response.Redirect("UserLogin.aspx");
                else
                {
                    lblUname.Text = username;
                    DropDownList1.SelectedIndex = 0;
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {

                string uid = (string) Session["uid"];

               
                string sql = "insert into UserProfile(uid,Address,Marks10,Marks12,CurrentQual,HighestQual,DesiredLoc,Certifications,Interests,CompanyName,WorkDuration,JobTitle,Salary)"+ 
"values("+uid+",'"+txtAddress.Text+"', "+txtMarks.Text+","+txtMarks1.Text+", '"+txtCurrentQualification.Text+"', '"+txtHighestQualification.Text+"', '"+txtLocation.Text+"', '"+txtCertifications.Text+"', '"+txtInterests.Text+"', '"+txtCompName.Text+"', '"+txtWorkDur.Text+"', '"+txtJobTitle.Text+"', "+txtSal.Text+")";
                SqlCommand sqlcommand = new SqlCommand(sql, connection);
                int x = sqlcommand.ExecuteNonQuery();

                if (x > 0)
                    Response.Write("<Script>alert('User Profile Created successfully');window.location='UserLogin.aspx'</Script>");

                else
                    Response.Write("<Script>alert('Unable to create');</Script>");
            }



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 1)
            {
                
                txtCompName.Visible = true;
                txtWorkDur.Visible = true;
                txtJobTitle.Visible = true;
                txtSal.Visible = true;

            }
            else
            {
                txtCompName.Visible = false;
                txtWorkDur.Visible = false;
                txtJobTitle.Visible = false;
                txtSal.Visible = false;

            }
            DropDownList1.Focus();

        }
    }
}