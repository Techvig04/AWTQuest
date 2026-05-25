using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWTQuest
{
    public partial class Quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            RadioButtonList[] allQuestions = {
                q1, q2, q3, q4, q5, q6, q7, q8, q9, q10,
                q11, q12, q13, q14, q15, q16, q17, q18, q19, q20
            };

            // Check for blanks
            foreach (var question in allQuestions)
            {
                if (question.SelectedIndex == -1)
                {
                    lblFeedback.Text = "⚠️ You cannot defeat the boss yet! Answer all 20 questions.";
                    return;
                }
            }

            string[] answerKey = {
                "C", "B", "A", "B", "A", "B", "C",
                "B", "C", "A", "B", "C", "A", "B",
                "C", "A", "B", "B", "A", "B"
            };

            int score = 0;

            // Grade the quiz and provide visual feedback!
            for (int i = 0; i < allQuestions.Length; i++)
            {
                if (allQuestions[i].SelectedValue == answerKey[i])
                {
                    score += 5;
                    allQuestions[i].SelectedItem.Text += " ✅ Correct!";
                }
                else
                {
                    allQuestions[i].SelectedItem.Text += $" ❌ Wrong! (Correct Answer was {answerKey[i]})";
                }

                // Lock the question so they can't change it after grading
                allQuestions[i].Enabled = false;
            }

            // Save Score
            Session["score"] = score;

            // Update UI
            lblFeedback.Text = $"Boss Defeated! You earned {score} / 100 XP.";
            lblFeedback.CssClass = "text-success fw-bold d-block mb-3 text-center fs-3";

            // Hide submit, show leaderboard button
            btnSubmit.Visible = false;
            btnGoToScore.Visible = true;
        }

        // New button click event to go to the leaderboard
        protected void btnGoToScore_Click(object sender, EventArgs e)
        {
            Response.Redirect("Score.aspx");
        }
    }
}