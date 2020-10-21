using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class TestOptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            connection.Open();
            System.Data.SqlClient.SqlDataAdapter sqlDataAdapter = new System.Data.SqlClient.SqlDataAdapter("select uid,key_skill_id,(select KeySkill from KeySkills where id=ksi.key_skill_id)as'KeySkillName' from KeySkillInfo ksi where uid=" + Session["uid"] + " AND status is null", connection);
            System.Data.DataSet ds = new System.Data.DataSet();
            sqlDataAdapter.Fill(ds);
            connection.Close();

            System.Data.DataTable dt = ds.Tables[0];

            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "KeySkillName";
            DropDownList1.DataValueField = "key_skill_id";
            DropDownList1.DataBind();

            if (dt.Rows.Count == 0)
                Response.Write("<script>alert('You have completed all the tests';window.location='NewUserDashboard.aspx');</script>");

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["ksi"] = DropDownList1.SelectedValue;
            Response.Redirect("Test.aspx");
        }
    }
}