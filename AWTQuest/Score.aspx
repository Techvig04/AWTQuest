<%@ Page Title="Score & Leaderboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Score.aspx.cs" Inherits="AWTQuest.Score" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        
        <div class="text-center mb-5">
            <h2 class="fw-bold">Quest Complete! 🏁</h2>
            <div id="scoreAlert" runat="server" class="alert alert-success mt-3 p-4 shadow-sm d-inline-block">
                <h3 class="mb-0 fw-bold">
                    <asp:Label ID="lblCurrentPlayer" runat="server"></asp:Label>
                </h3>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-lg border-0">
                    <div class="card-header bg-dark text-white text-center py-3">
                        <h4 class="mb-0 fw-bold">🏆 Global Leaderboard</h4>
                    </div>
                    <div class="card-body p-0">
                        <table class="table table-striped table-hover mb-0 text-center">
                            <thead class="table-primary">
                                <tr>
                                    <th>Rank</th>
                                    <th>Player Name</th>
                                    <th>High Score</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Literal ID="litLeaderboard" runat="server"></asp:Literal>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center mt-4 mb-5">
            <a href="Login.aspx" class="btn btn-outline-danger me-2 fw-bold">Log out to Switch Player</a>
            <a href="Dashboard.aspx" class="btn btn-dark px-4 fw-bold">Back to Hub</a>
        </div>

    </div>
</asp:Content>