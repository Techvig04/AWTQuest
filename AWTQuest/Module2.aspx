<%@ Page Title="Module 2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Module2.aspx.cs" Inherits="AWTQuest.Module2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4 mb-5">
        <div class="card shadow-lg border-0">
            <div class="card-header bg-primary text-white"><h3 class="mb-0 fw-bold">🎨 Module 2: User Interface & Controls</h3></div>
            <div class="card-body p-5">
                <h5 class="text-primary border-bottom pb-2">Deep Dive Explanation</h5>
                <p>Building a good UI requires consistency and security. <strong>Master Pages</strong> provide the consistency by allowing you to define a standard header/footer that wraps around all your Content Pages. For security, <strong>Validation Controls</strong> (like <code>RequiredFieldValidator</code> and <code>CompareValidator</code>) protect your database by ensuring users type in the correct data *before* it is ever sent to the server.</p>
                
                <div class="alert alert-light border-start border-primary border-4 mt-4">
                    <h5 class="fw-bold">Resources & Scrolls:</h5>
                    <p class="mb-1"><strong>📚 Reference Books:</strong> <em>Beginning ASP.NET 4.5</em> by Imar Spaanjaars</p>
                    <p class="mb-1"><strong>▶️ YouTube:</strong> <a href="https://www.youtube.com/watch?v=1F2b6G01y1U" target="_blank">ProgrammingKnowledge - Validation Controls</a></p>
                    <p class="mb-0"><strong>🌐 Websites:</strong> <a href="https://www.c-sharpcorner.com/technologies/asp-dot-net-controls" target="_blank">C# Corner Controls Guide</a></p>
                </div>
                
                <div class="mt-4"><a href="Learn.aspx" class="btn btn-dark fw-bold">⬅ Back to Library</a></div>
            </div>
        </div>
    </div>
</asp:Content>
