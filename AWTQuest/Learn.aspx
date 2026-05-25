<%@ Page Title="Learn" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Learn.aspx.cs" Inherits="AWTQuest.Learn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .syllabus-card { border-left: 5px solid #6f42c1; transition: 0.3s; }
        .syllabus-card:hover { transform: translateY(-5px); box-shadow: 0 10px 20px rgba(0,0,0,0.15); }
        .topic-icon { font-size: 2.5rem; color: #6f42c1; }
        .module-badge { background-color: #6f42c1; color: white; padding: 3px 8px; border-radius: 5px; font-size: 0.8rem; font-weight: bold; margin-bottom: 10px; display: inline-block; }
        a.card-link { text-decoration: none; color: inherit; }
    </style>

    <div class="text-center mb-5">
        <h1 class="fw-bold text-dark">📖 The Grand Library</h1>
        <p class="text-muted">Choose a quest scroll below to travel to that module's zone.</p>
    </div>
            
    <div class="row">
        <div class="col-md-4 mb-4">
            <a href="Module1.aspx" class="card-link">
                <div class="card shadow-sm p-4 syllabus-card h-100">
                    <div class="mb-2"><span class="module-badge">MODULE 1</span></div>
                    <div class="d-flex align-items-center mb-3">
                        <div class="topic-icon me-3">🚀</div><h4 class="mb-0 fw-bold">Intro to ASP.NET</h4>
                    </div>
                    <p class="text-muted small">Travel here to learn about Page Life Cycle, Postbacks, and Controls.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="Module2.aspx" class="card-link">
                <div class="card shadow-sm p-4 syllabus-card h-100">
                    <div class="mb-2"><span class="module-badge">MODULE 2</span></div>
                    <div class="d-flex align-items-center mb-3">
                        <div class="topic-icon me-3">🎨</div><h4 class="mb-0 fw-bold">User Interface</h4>
                    </div>
                    <p class="text-muted small">Travel here for Validation Controls, Master Pages, Themes, and Navigation.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="Module3.aspx" class="card-link">
                <div class="card shadow-sm p-4 syllabus-card h-100">
                    <div class="mb-2"><span class="module-badge">MODULE 3</span></div>
                    <div class="d-flex align-items-center mb-3">
                        <div class="topic-icon me-3">💾</div><h4 class="mb-0 fw-bold">Databases & LINQ</h4>
                    </div>
                    <p class="text-muted small">Travel here for ADO.NET Architecture, GridViews, and Entity Framework.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="Module4.aspx" class="card-link">
                <div class="card shadow-sm p-4 syllabus-card h-100">
                    <div class="mb-2"><span class="module-badge">MODULE 4</span></div>
                    <div class="d-flex align-items-center mb-3">
                        <div class="topic-icon me-3">🧠</div><h4 class="mb-0 fw-bold">State Management</h4>
                    </div>
                    <p class="text-muted small">Travel here for Session, Cookies, ViewState, and AJAX partial rendering.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="Module5.aspx" class="card-link">
                <div class="card shadow-sm p-4 syllabus-card h-100">
                    <div class="mb-2"><span class="module-badge">MODULE 5</span></div>
                    <div class="d-flex align-items-center mb-3">
                        <div class="topic-icon me-3">🌐</div><h4 class="mb-0 fw-bold">Web Services & WCF</h4>
                    </div>
                    <p class="text-muted small">Travel here for XML Web Services, SOAP, and WCF Architecture.</p>
                </div>
            </a>
        </div>

        <div class="col-md-4 mb-4">
            <a href="Module6.aspx" class="card-link">
                <div class="card shadow-sm p-4 syllabus-card h-100">
                    <div class="mb-2"><span class="module-badge">MODULE 6</span></div>
                    <div class="d-flex align-items-center mb-3">
                        <div class="topic-icon me-3">🏗️</div><h4 class="mb-0 fw-bold">Core MVC</h4>
                    </div>
                    <p class="text-muted small">Travel here for Models, Views, Controllers, Routing, and Razor syntax.</p>
                </div>
            </a>
        </div>
    </div>

    <div class="text-center mt-5 mb-4">
        <a href="Quiz.aspx" class="btn btn-danger btn-lg fw-bold px-5 py-3 shadow-lg rounded-pill">I'm Ready! Face the Boss ⚔️</a>
    </div>
</asp:Content>