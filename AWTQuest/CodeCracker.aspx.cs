using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWTQuest
{
    public partial class CodeCracker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("Login.aspx");
        }

        protected void btnNext1_Click(object sender, EventArgs e)
        {
            if (rblBug1.SelectedValue == "B") // !IsPostBack
            {
                lblErr1.Text = "";
                mvCodeGame.ActiveViewIndex = 1; // Move to Bug 2
            }
            else lblErr1.Text = "❌ Compilation Error! Try again.";
        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
            if (rblBug2.SelectedValue == "A") // Application
            {
                lblErr2.Text = "";
                mvCodeGame.ActiveViewIndex = 2; // Move to Bug 3
            }
            else lblErr2.Text = "❌ Compilation Error! Try again.";
        }

        protected void btnNext3_Click(object sender, EventArgs e)
        {
            if (rblBug3.SelectedValue == "C") // ControlToValidate
            {
                // Award 100 XP
                int currentScore = Session["score"] != null ? Convert.ToInt32(Session["score"]) : 0;
                Session["score"] = currentScore + 100;

                mvCodeGame.ActiveViewIndex = 3; // Move to Win Screen
            }
            else lblErr3.Text = "❌ Compilation Error! Try again.";
        }
    }
}