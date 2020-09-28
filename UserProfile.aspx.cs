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
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

                string uid = (string) Session["uid"];

               
                string sql = "insert into UserProfile(uid,Address,Mark,Password,MobileNo,city) values("+uid+",'"+ txtAddress.Text + "'," + txtMarks.Text + ",'" + Password + "','" + MobileNo + "','" + City + "')";
                SqlCommand sqlcommand = new SqlCommand(sql, connection);
                int x = sqlcommand.ExecuteNonQuery();

                if (x > 0)
                    Response.Write("<Script>alert('User registered successfully');window.location='UserLogin.aspx'</Script>");

                else
                    Response.Write("<Script>alert('Unable to connect');</Script>");
            }*/



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 1)
            {
                txtCompName.Visible = true;
                txtWorkDur.Visible = true;
                txtSal.Visible = true;
            }
            else
            {
                txtCompName.Visible = false;
                txtWorkDur.Visible = false;
                txtSal.Visible = false;
            }
        }
    }
}