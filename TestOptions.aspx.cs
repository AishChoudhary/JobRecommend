using System;
using System.Collections;
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
        List<string> attempts = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            connection.Open();
            System.Data.SqlClient.SqlDataAdapter sqlDataAdapter = new System.Data.SqlClient.SqlDataAdapter("select uid,key_skill_id,(select KeySkill from KeySkills where id=ksi.key_skill_id)as'KeySkillName', attempts from KeySkillInfo ksi where uid=" + Session["uid"] +" AND attempts<=3" , connection);
            System.Data.DataSet ds = new System.Data.DataSet();
            sqlDataAdapter.Fill(ds);
            connection.Close();

            System.Data.DataTable dt = ds.Tables[0];

            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "KeySkillName";
            DropDownList1.DataValueField = "key_skill_id";
            DropDownList1.DataBind();

            for (int i = 0; i <= dt.Rows.Count; i++)
            {
                try
                {
                    attempts.Add(dt.Rows[i].ItemArray[3].ToString());
                        }catch(Exception ex)
                {
                    attempts.Add("0");
                }
                    }

            if (dt.Rows.Count == 0)
                Response.Write("<script>alert('You have completed all the tests');window.location='NewUserDashboard.aspx';</script>");

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["ksi"] = DropDownList1.SelectedValue;

            Session["attempts"] = attempts[DropDownList1.SelectedIndex];

            Response.Redirect("Test.aspx");
        }
    }
}