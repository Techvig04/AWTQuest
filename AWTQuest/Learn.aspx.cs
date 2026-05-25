using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWTQuest
{
    public partial class Learn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // SECURITY CHECK
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}