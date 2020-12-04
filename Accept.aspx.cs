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
    public partial class Accept : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string iid = (string)Request.QueryString["iid"];
            string status = (string)Request.QueryString["status"];
            //int not_flag = Convert.ToInt32((string)Request.QueryString["notflag"]);

            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {
                SqlCommand sqlCommand = new SqlCommand("update invitations set status='Accepted' where inv_id=" +iid, connection);
                int x = sqlCommand.ExecuteNonQuery();

                connection.Close();

                if (x > 0)
                    Response.Write("<Script>alert('You have accepted to this job successfully');window.location='ReceivedInvitation.aspx'</Script>");

                else
                    Response.Write("<Script>alert('Unable to Apply');</Script>");


            }
        }
    }
}