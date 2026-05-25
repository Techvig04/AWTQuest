<%@ Page Title="Module 4" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Module4.aspx.cs" Inherits="AWTQuest.Module4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4 mb-5">
        <div class="card shadow-lg border-0">
            <div class="card-header bg-primary text-white"><h3 class="mb-0 fw-bold">🧠 Module 4: State Management & AJAX</h3></div>
            <div class="card-body p-5">
                <h5 class="text-primary border-bottom pb-2">Deep Dive Explanation</h5>
                <p>Because the web is "Stateless", we use <strong>State Management</strong>. Client-side tools include Cookies and ViewState. Server-side tools include Session (data for one specific user) and Application State (global data for everyone—like our Leaderboard!). Furthermore, using the <code>ScriptManager</code> and <code>UpdatePanel</code>, we can use <strong>AJAX</strong> to refresh tiny parts of our screen without making the screen flicker.</p>
                
                <div class="alert alert-light border-start border-primary border-4 mt-4">
                    <h5 class="fw-bold">Resources & Scrolls:</h5>
                    <p class="mb-1"><strong>📚 Reference Books:</strong> <em>ASP.NET 4.5 Unleashed</em> by Stephen Walther</p>
                    <p class="mb-1"><strong>▶️ YouTube:</strong> <a href="https://www.youtube.com/watch?v=F0oNq0e8vP0" target="_blank">DotNetTricks - State Management</a></p>
                    <p class="mb-0"><strong>🌐 Websites:</strong> <a href="https://www.tutorialspoint.com/asp.net/asp.net_managing_state.htm" target="_blank">TutorialsPoint State Management</a></p>
                </div>
                
                <div class="mt-4"><a href="Learn.aspx" class="btn btn-dark fw-bold">⬅ Back to Library</a></div>
            </div>
        </div>
    </div>
</asp:Content>
