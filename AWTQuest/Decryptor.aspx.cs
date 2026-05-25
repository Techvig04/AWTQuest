using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWTQuest
{
    public partial class Decryptor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("Login.aspx");
        }

        protected void btnClaim_Click(object sender, EventArgs e)
        {
            int currentScore = Session["score"] != null ? Convert.ToInt32(Session["score"]) : 0;
            Session["score"] = currentScore + 50; // Add the 50 XP
            Response.Redirect("Dashboard.aspx");
        }
    }
}