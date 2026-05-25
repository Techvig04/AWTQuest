<%@ Page Title="Module 1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Module1.aspx.cs" Inherits="AWTQuest.Module1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4 mb-5">
        <div class="card shadow-lg border-0">
            <div class="card-header bg-primary text-white">
                <h3 class="mb-0 fw-bold">🚀 Module 1: Introduction to ASP.NET</h3>
            </div>
            <div class="card-body p-5">
                <h5 class="text-primary border-bottom pb-2">Deep Dive Explanation</h5>
                <p>ASP.NET Web Forms allow you to build dynamic websites using a drag-and-drop, event-driven model similar to desktop applications. The most critical concept here is the <strong>Page Life Cycle</strong> (Init, Load, PreRender, Unload). You must also understand <strong>Postback</strong>—when a webpage sends data back to the server to be processed, and <strong>AutoPostBack</strong>, which triggers this trip to the server instantly when a control (like a dropdown) is changed.</p>
                
                <div class="alert alert-light border-start border-primary border-4 mt-4">
                    <h5 class="fw-bold">Resources & Scrolls:</h5>
                    <p class="mb-1"><strong>📚 Reference Books:</strong> <em>Pro ASP.NET 4.5 in C#</em> by Adam Freeman</p>
                    <p class="mb-1"><strong>▶️ YouTube:</strong> <a href="https://www.youtube.com/user/kudvenkat" target="_blank">Kudvenkat's ASP.NET Web Forms Playlist</a></p>
                    <p class="mb-0"><strong>🌐 Websites:</strong> <a href="https://learn.microsoft.com/en-us/aspnet/web-forms/" target="_blank">Microsoft Official Web Forms Docs</a></p>
                </div>
                
                <div class="mt-4"><a href="Learn.aspx" class="btn btn-dark fw-bold">⬅ Back to Library</a></div>
            </div>
        </div>
    </div>
</asp:Content>