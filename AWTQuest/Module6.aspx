<%@ Page Title="Module 6" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Module6.aspx.cs" Inherits="AWTQuest.Module6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4 mb-5">
        <div class="card shadow-lg border-0">
            <div class="card-header bg-primary text-white"><h3 class="mb-0 fw-bold">🏗️ Module 6: ASP.NET Core MVC Framework</h3></div>
            <div class="card-body p-5">
                <h5 class="text-primary border-bottom pb-2">Deep Dive Explanation</h5>
                <p>MVC separates your code into three parts. The <strong>Model</strong> handles database structure and logic. The <strong>View</strong> is the HTML/CSS UI using <code>@Razor</code> syntax. The <strong>Controller</strong> is the brain that receives user clicks, asks the Model for data, and hands that data to the View. You also learn Routing (how URLs map to Controllers) and CRUD operations.</p>
                
                <div class="alert alert-light border-start border-primary border-4 mt-4">
                    <h5 class="fw-bold">Resources & Scrolls:</h5>
                    <p class="mb-1"><strong>📚 Reference Books:</strong> <em>Pro ASP.NET Core MVC</em> by Adam Freeman</p>
                    <p class="mb-1"><strong>▶️ YouTube:</strong> <a href="https://www.youtube.com/watch?v=hZ1DASYd9rk" target="_blank">Programming with Mosh - ASP.NET Core MVC</a></p>
                    <p class="mb-0"><strong>🌐 Websites:</strong> <a href="https://www.tutorialsteacher.com/mvc/asp.net-mvc-tutorials" target="_blank">TutorialsTeacher MVC Guide</a></p>
                </div>
                
                <div class="mt-4"><a href="Learn.aspx" class="btn btn-dark fw-bold">⬅ Back to Library</a></div>
            </div>
        </div>
    </div>
</asp:Content>
