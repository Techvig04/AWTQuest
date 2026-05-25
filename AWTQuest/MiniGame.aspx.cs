using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWTQuest
{
    public partial class MiniGame : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnClaimXP_Click(object sender, EventArgs e)
        {
            // Grab the points from the Javascript hidden field!
            int bonusXP = Convert.ToInt32(hfGameScore.Value);

            // Add it to their existing session score
            if (Session["score"] != null)
            {
                int currentScore = Convert.ToInt32(Session["score"]);
                Session["score"] = currentScore + bonusXP;
            }
            else
            {
                Session["score"] = bonusXP;
            }

            // Send them back to the dashboard
            Response.Redirect("Dashboard.aspx");
        }
    }
}