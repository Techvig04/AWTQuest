<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="AWTQuest.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="fw-bold">Welcome back, Player! 🛡️</h2>
    <p class="text-muted">Choose your next quest below.</p>

    <div class="row mt-4">
        
        <div class="col-md-3 mb-3">
            <div class="card p-4 text-center border-primary shadow-sm h-100">
                <h4 class="text-primary">📚 The Library</h4>
                <p>Study the 6 modules.</p>
                <a href="Learn.aspx" class="btn btn-outline-primary mt-auto">Start Reading</a>
            </div>
        </div>

        <div class="col-md-3 mb-3">
            <div class="card p-4 text-center border-danger shadow-sm h-100">
                <h4 class="text-danger">🧩 The Arcade</h4>
                <p>Play memory matchers & sequence puzzles.</p>
                <a href="MiniGame.aspx" class="btn btn-outline-danger mt-auto">Enter Arcade</a>
            </div>
        </div>

        <div class="col-md-3 mb-3">
            <div class="card p-4 text-center border-dark shadow-sm h-100">
                <h4 class="text-dark">🕵️‍♂️ Code Cracker</h4>
                <p>Find bugs in raw ASP.NET C# code.</p>
                <a href="CodeCracker.aspx" class="btn btn-outline-dark mt-auto">Debug Code</a>
            </div>
        </div>

        <div class="col-md-3 mb-3">
            <div class="card p-4 text-center border-success shadow-sm h-100">
                <h4 class="text-success">🔐 Decryptor</h4>
                <p>Guess the hidden framework keywords.</p>
                <a href="Decryptor.aspx" class="btn btn-outline-success mt-auto">Decrypt Now</a>
            </div>
        </div>

    </div>

    <div class="row mt-4 justify-content-center">
        <div class="col-md-4 mb-3">
            <div class="card p-3 text-center bg-warning text-dark shadow-sm border-0">
                <h5 class="fw-bold mb-2">⚔️ The Final Boss</h5>
                <a href="Quiz.aspx" class="btn btn-dark fw-bold">Take the 20-Q Quiz</a>
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <div class="card p-3 text-center bg-dark text-white shadow-sm border-0">
                <h5 class="fw-bold mb-2">🏆 Global Rankings</h5>
                <a href="Score.aspx" class="btn btn-light fw-bold text-dark">View Leaderboard</a>
            </div>
        </div>
    </div>
</asp:Content>