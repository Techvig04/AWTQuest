using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace AWTQuest
{
    public partial class Score : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // SECURITY CHECK
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            // Grab the Player Name and Score from the Session
            string currentUser = Session["user"].ToString();
            int currentScore = Session["score"] != null ? Convert.ToInt32(Session["score"]) : 0;

            // THE FIX: We removed the "/ 100" because XP is now uncapped!
            lblCurrentPlayer.Text = $"{currentUser}, your Total XP is: {currentScore} 🌟";

            // Fetch or Create the Global Leaderboard
            Dictionary<string, int> leaderboard = Application["Leaderboard"] as Dictionary<string, int>;
            if (leaderboard == null)
            {
                leaderboard = new Dictionary<string, int>();
            }

            // Update Leaderboard if this player got a new High Score
            if (leaderboard.ContainsKey(currentUser))
            {
                if (currentScore > leaderboard[currentUser])
                {
                    leaderboard[currentUser] = currentScore;
                }
            }
            else
            {
                leaderboard.Add(currentUser, currentScore);
            }

            // Save it back to Global Application State
            Application["Leaderboard"] = leaderboard;

            // Sort and Display the Leaderboard table
            BuildLeaderboardHTML(leaderboard);
        }

        private void BuildLeaderboardHTML(Dictionary<string, int> board)
        {
            // Sort dictionary by score descending (highest at top)
            var sortedBoard = board.OrderByDescending(x => x.Value).ToList();

            StringBuilder html = new StringBuilder();
            int rank = 1;

            foreach (var player in sortedBoard)
            {
                string rankDisplay = rank == 1 ? "👑 1" : rank.ToString();

                html.Append("<tr>");
                html.Append($"<td><strong class='text-primary'>{rankDisplay}</strong></td>");
                html.Append($"<td class='fw-bold'>{player.Key}</td>");
                html.Append($"<td><span class='badge bg-success fs-6'>{player.Value} XP</span></td>");
                html.Append("</tr>");
                rank++;
            }

            litLeaderboard.Text = html.ToString();
        }
    }
}