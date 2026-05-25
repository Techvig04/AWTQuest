<%@ Page Title="Module 3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Module3.aspx.cs" Inherits="AWTQuest.Module3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4 mb-5">
        <div class="card shadow-lg border-0">
            <div class="card-header bg-primary text-white"><h3 class="mb-0 fw-bold">💾 Module 3: Databases & LINQ</h3></div>
            <div class="card-body p-5">
                <h5 class="text-primary border-bottom pb-2">Deep Dive Explanation</h5>
                <p>To talk to SQL Server, we historically used <strong>ADO.NET</strong>. It has a Connected architecture (using <code>SqlDataReader</code>) and a Disconnected architecture (using <code>SqlDataAdapter</code> and <code>DataSet</code>). Modern ASP.NET uses <strong>Entity Framework</strong> and <strong>LINQ</strong> (Language Integrated Query), which allows you to write C# code to query your database without writing raw SQL strings!</p>
                
                <div class="alert alert-light border-start border-primary border-4 mt-4">
                    <h5 class="fw-bold">Resources & Scrolls:</h5>
                    <p class="mb-1"><strong>📚 Reference Books:</strong> <em>Programming Entity Framework</em> by Julia Lerman</p>
                    <p class="mb-1"><strong>▶️ YouTube:</strong> <a href="https://www.youtube.com/watch?v=tcJEqM_XvFw" target="_blank">Tim Corey - Intro to LINQ</a></p>
                    <p class="mb-0"><strong>🌐 Websites:</strong> <a href="https://www.entityframeworktutorial.net/" target="_blank">Entity Framework Tutorial</a></p>
                </div>
                
                <div class="mt-4"><a href="Learn.aspx" class="btn btn-dark fw-bold">⬅ Back to Library</a></div>
            </div>
        </div>
    </div>
</asp:Content>
