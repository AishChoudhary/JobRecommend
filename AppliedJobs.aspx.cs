using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class AppliedJobs : System.Web.UI.Page
    {
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
        }
    }
}