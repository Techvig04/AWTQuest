using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWTQuest
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // SECURITY CHECK: Kick unauthorized users back to login
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}