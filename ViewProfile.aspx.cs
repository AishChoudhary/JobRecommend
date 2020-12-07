using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class ViewProfile : System.Web.UI.Page
    {
        System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        static string link="";
        protected void Page_Load(object sender, EventArgs e)
        {

            string email, username;
            email = (string)Session["email"];
            username = (string)Session["uname"];
            if (email == null)
                Response.Redirect("RecruiterLogin.aspx");
            else
                lblUname.Text = username;

            connection.Open();
            System.Data.SqlClient.SqlDataAdapter sqlDataAdapter = new System.Data.SqlClient.SqlDataAdapter("select * from UserProfile where uid=" + Request.QueryString["uid"], connection);
            System.Data.DataSet ds = new System.Data.DataSet();
            sqlDataAdapter.Fill(ds);
            connection.Close();


            System.Data.DataTable dt = ds.Tables[0];

            txtAddress.Text = dt.Rows[0].ItemArray[2].ToString();
            txtMarks.Text = dt.Rows[0].ItemArray[3].ToString();
            txtMarks1.Text = dt.Rows[0].ItemArray[4].ToString();
            txtCurrentQualification.Text = dt.Rows[0].ItemArray[5].ToString();
            txtHighestQualification.Text = dt.Rows[0].ItemArray[6].ToString();
            txtLocation.Text = dt.Rows[0].ItemArray[7].ToString();
            txtCertifications.Text = dt.Rows[0].ItemArray[8].ToString();
            txtInterests.Text = dt.Rows[0].ItemArray[9].ToString();
            txtCompName.Text = dt.Rows[0].ItemArray[10].ToString();
            txtWorkDur.Text = dt.Rows[0].ItemArray[11].ToString();
            txtJobTitle.Text = dt.Rows[0].ItemArray[12].ToString();
            txtSal.Text = dt.Rows[0].ItemArray[13].ToString();

            link = dt.Rows[0].ItemArray[14].ToString();
            System.Diagnostics.Debug.Print("Filename:" + link);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.Print(Server.MapPath("~/files/" + link));
            Response.Redirect("https://localhost:44377/files/" + link);
        }
    }
}