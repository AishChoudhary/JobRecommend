using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobRecommend
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Successful for " + txtEmail + "');</script>");
        }
    }
}