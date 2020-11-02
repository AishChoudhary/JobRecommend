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
    public partial class DeletePost : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string uid, pid;
            uid = (string)Session["uid"];
            pid = (string)Request.QueryString["pid"];
                  
       
            connection.Open();
             string   sql = "delete from ApplyJob where pid = " + pid;
            SqlCommand sqlcommand = new SqlCommand(sql, connection);
                  int  x = sqlcommand.ExecuteNonQuery();

            sql = "delete from NewRequirement where id=" + pid;
            sqlcommand = new SqlCommand(sql, connection);
             x = sqlcommand.ExecuteNonQuery();

            connection.Close();


            if (x > 0)
                    Response.Write("<Script>alert('You have deleted this job successfully');window.location='MyPosts.aspx'</Script>");

                else
                    Response.Write("<Script>alert('Unable to Delete');</Script>");
          

        }

        
    }
}