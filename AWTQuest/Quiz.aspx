<%@ Page Title="Quiz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="AWTQuest.Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container mt-4 mb-5">
        <div class="text-center mb-5">
            <h1 class="fw-bold text-danger">🔥 The Final Boss Fight</h1>
            <p class="text-muted">20 Questions. 100 XP. Prove your ASP.NET mastery!</p>
        </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                
                <h3 class="fw-bold text-success border-bottom border-success pb-2 mb-4">🟢 Level 1: Simple (The Basics)</h3>
                
                <div class="row">
                    <div class="col-md-6 mb-3"><div class="card p-3 border-success h-100">
                        <p class="fw-bold">1. Which State Management stores data globally for all users?</p>
                        <asp:RadioButtonList ID="q1" runat="server"><asp:ListItem Value="A">Session</asp:ListItem><asp:ListItem Value="B">Cookies</asp:ListItem><asp:ListItem Value="C">Application State</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-success h-100">
                        <p class="fw-bold">2. Which control ensures a user does not leave a TextBox empty?</p>
                        <asp:RadioButtonList ID="q2" runat="server"><asp:ListItem Value="A">CompareValidator</asp:ListItem><asp:ListItem Value="B">RequiredFieldValidator</asp:ListItem><asp:ListItem Value="C">RangeValidator</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-success h-100">
                        <p class="fw-bold">3. What does MVC stand for?</p>
                        <asp:RadioButtonList ID="q3" runat="server"><asp:ListItem Value="A">Model View Controller</asp:ListItem><asp:ListItem Value="B">Main Visual Code</asp:ListItem><asp:ListItem Value="C">Microsoft View Controller</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-success h-100">
                        <p class="fw-bold">4. Which feature provides a consistent layout across multiple pages?</p>
                        <asp:RadioButtonList ID="q4" runat="server"><asp:ListItem Value="A">Themes</asp:ListItem><asp:ListItem Value="B">Master Pages</asp:ListItem><asp:ListItem Value="C">Global.asax</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-success h-100">
                        <p class="fw-bold">5. What triggers a trip to the server in ASP.NET Web Forms?</p>
                        <asp:RadioButtonList ID="q5" runat="server"><asp:ListItem Value="A">AutoPostBack</asp:ListItem><asp:ListItem Value="B">ViewState</asp:ListItem><asp:ListItem Value="C">Cookies</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-success h-100">
                        <p class="fw-bold">6. Which control is mandatory to use AJAX in ASP.NET?</p>
                        <asp:RadioButtonList ID="q6" runat="server"><asp:ListItem Value="A">UpdatePanel</asp:ListItem><asp:ListItem Value="B">ScriptManager</asp:ListItem><asp:ListItem Value="C">Timer</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-12 mb-3"><div class="card p-3 border-success h-100">
                        <p class="fw-bold">7. Which file configures settings for an ASP.NET web application?</p>
                        <asp:RadioButtonList ID="q7" runat="server"><asp:ListItem Value="A">Global.asax</asp:ListItem><asp:ListItem Value="B">Site.Master</asp:ListItem><asp:ListItem Value="C">Web.config</asp:ListItem></asp:RadioButtonList>
                    </div></div>
                </div>

                <h3 class="fw-bold text-warning border-bottom border-warning pb-2 mt-5 mb-4">🟡 Level 2: Moderate (Architecture & Data)</h3>

                <div class="row">
                    <div class="col-md-6 mb-3"><div class="card p-3 border-warning h-100">
                        <p class="fw-bold">8. In ADO.NET, which object is used for Disconnected Architecture?</p>
                        <asp:RadioButtonList ID="q8" runat="server"><asp:ListItem Value="A">DataReader</asp:ListItem><asp:ListItem Value="B">DataSet</asp:ListItem><asp:ListItem Value="C">SqlCommand</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-warning h-100">
                        <p class="fw-bold">9. What symbol is used to transition from HTML to C# in a Razor View?</p>
                        <asp:RadioButtonList ID="q9" runat="server"><asp:ListItem Value="A">&lt;% %&gt;</asp:ListItem><asp:ListItem Value="B">$</asp:ListItem><asp:ListItem Value="C">@</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-warning h-100">
                        <p class="fw-bold">10. Which is NOT a Client-Side State Management technique?</p>
                        <asp:RadioButtonList ID="q10" runat="server"><asp:ListItem Value="A">Session State</asp:ListItem><asp:ListItem Value="B">Hidden Fields</asp:ListItem><asp:ListItem Value="C">Query Strings</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-warning h-100">
                        <p class="fw-bold">11. What does WCF stand for?</p>
                        <asp:RadioButtonList ID="q11" runat="server"><asp:ListItem Value="A">Web Control Foundation</asp:ListItem><asp:ListItem Value="B">Windows Communication Foundation</asp:ListItem><asp:ListItem Value="C">Web Connection Framework</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-warning h-100">
                        <p class="fw-bold">12. Which data-bound control allows the most customization using templates?</p>
                        <asp:RadioButtonList ID="q12" runat="server"><asp:ListItem Value="A">GridView</asp:ListItem><asp:ListItem Value="B">ListView</asp:ListItem><asp:ListItem Value="C">Repeater</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-warning h-100">
                        <p class="fw-bold">13. In MVC, which property passes temporary data from Controller to View?</p>
                        <asp:RadioButtonList ID="q13" runat="server"><asp:ListItem Value="A">ViewBag</asp:ListItem><asp:ListItem Value="B">Session</asp:ListItem><asp:ListItem Value="C">RouteParams</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-12 mb-3"><div class="card p-3 border-warning h-100">
                        <p class="fw-bold">14. What language enables querying objects directly in C#?</p>
                        <asp:RadioButtonList ID="q14" runat="server"><asp:ListItem Value="A">SQL</asp:ListItem><asp:ListItem Value="B">LINQ</asp:ListItem><asp:ListItem Value="C">XML</asp:ListItem></asp:RadioButtonList>
                    </div></div>
                </div>

                <h3 class="fw-bold text-danger border-bottom border-danger pb-2 mt-5 mb-4">🔴 Level 3: Hard (Advanced Frameworks)</h3>

                <div class="row">
                    <div class="col-md-6 mb-3"><div class="card p-3 border-danger h-100">
                        <p class="fw-bold">15. Which Entity Framework approach generates a database from your C# classes?</p>
                        <asp:RadioButtonList ID="q15" runat="server"><asp:ListItem Value="A">Database-First</asp:ListItem><asp:ListItem Value="B">Model-First</asp:ListItem><asp:ListItem Value="C">Code-First</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-danger h-100">
                        <p class="fw-bold">16. What generates server-side HTML based on model properties in ASP.NET Core?</p>
                        <asp:RadioButtonList ID="q16" runat="server"><asp:ListItem Value="A">Tag Helpers</asp:ListItem><asp:ListItem Value="B">Master Pages</asp:ListItem><asp:ListItem Value="C">Data Annotations</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-danger h-100">
                        <p class="fw-bold">17. In WCF, what attribute must be applied to a class to expose it as a service?</p>
                        <asp:RadioButtonList ID="q17" runat="server"><asp:ListItem Value="A">[WebMethod]</asp:ListItem><asp:ListItem Value="B">[ServiceContract]</asp:ListItem><asp:ListItem Value="C">[OperationContract]</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-danger h-100">
                        <p class="fw-bold">18. UnobtrusiveValidationMode uses which library to show errors without postback?</p>
                        <asp:RadioButtonList ID="q18" runat="server"><asp:ListItem Value="A">React</asp:ListItem><asp:ListItem Value="B">jQuery</asp:ListItem><asp:ListItem Value="C">Bootstrap</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-danger h-100">
                        <p class="fw-bold">19. Which MVC concept defines URL patterns like {controller}/{action}/{id}?</p>
                        <asp:RadioButtonList ID="q19" runat="server"><asp:ListItem Value="A">Routing</asp:ListItem><asp:ListItem Value="B">ViewData</asp:ListItem><asp:ListItem Value="C">Partial Views</asp:ListItem></asp:RadioButtonList>
                    </div></div>

                    <div class="col-md-6 mb-3"><div class="card p-3 border-danger h-100">
                        <p class="fw-bold">20. What is Global.asax primarily used for?</p>
                        <asp:RadioButtonList ID="q20" runat="server"><asp:ListItem Value="A">UI Styling</asp:ListItem><asp:ListItem Value="B">Application & Session level events</asp:ListItem><asp:ListItem Value="C">Database Connections</asp:ListItem></asp:RadioButtonList>
                    </div></div>
                </div>

                <asp:Label ID="lblError" runat="server" CssClass="text-danger fw-bold d-block mb-3 text-center fs-5"></asp:Label>
                
                <asp:Label ID="lblFeedback" runat="server" CssClass="text-danger fw-bold d-block mb-3 text-center fs-5"></asp:Label>
                
                <div class="text-center mt-4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit Final Boss Answers" CssClass="btn btn-danger btn-lg fw-bold px-5 py-3 rounded-pill shadow-lg" OnClick="btnSubmit_Click" />
                    
                    <asp:Button ID="btnGoToScore" runat="server" Text="Proceed to Leaderboard 🏆" CssClass="btn btn-success btn-lg fw-bold px-5 py-3 rounded-pill shadow-lg" Visible="false" OnClick="btnGoToScore_Click" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>