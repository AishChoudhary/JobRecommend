using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class ReceivedInvitation : System.Web.UI.Page
    {
        //SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string email, username;
            email = (string)Session["email"];
            username = (string)Session["uname"];


            if (email == null)
                Response.Redirect("UserLogin.aspx");
            else
            {
                lblUname.Text = username;

            }

            // string uid = (string)Session["uid"];
            // string status = (string)Request.QueryString["status"];
            //int not_flag = Convert.ToInt32((string)Request.QueryString["notflag"]);

            //  connection.Open();
            // if (connection.State == System.Data.ConnectionState.Open)
            //  {
            // SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("update invitations set status='Accepted'", connection);
            // DataSet ds = new DataSet();
            // sqlDataAdapter.Fill(ds);
            // connection.Close();

            //}

        }

    }
}
