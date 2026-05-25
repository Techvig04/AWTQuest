using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWTQuest
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // NEW FIX: When the login page loads, wipe out any old player data!
            if (!IsPostBack)
            {
                Session.Clear();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text;

            if (!string.IsNullOrEmpty(username) && password == "123")
            {
                // Set the new user
                Session["user"] = username;

                // NEW FIX: Explicitly set their starting score to 0
                Session["score"] = 0;

                // Set Cookie
                Response.Cookies["username"].Value = username;
                Response.Cookies["username"].Expires = DateTime.Now.AddDays(1);

                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblMessage.Text = "Enter any Player Name, and '123' as password.";
            }
        }
    }
}