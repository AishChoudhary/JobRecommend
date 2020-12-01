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
    public partial class ChangeNotStatus : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string uid = (string)Session["uid"];
            string status = (string)Request.QueryString["status"];
            int not_flag = Convert.ToInt32((string)Request.QueryString["notflag"]);

            connection.Open();
            if (connection.State == System.Data.ConnectionState.Open)
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("update notification set status='READ'" , connection) ;
                DataSet ds = new DataSet();
                sqlDataAdapter.Fill(ds);
                connection.Close();

                

            }

            if(not_flag==2)
            Response.Redirect("MyPosts.aspx");

            if (not_flag == 1)
                Response.Redirect("ViewInvitation.aspx");


        }
    }
}