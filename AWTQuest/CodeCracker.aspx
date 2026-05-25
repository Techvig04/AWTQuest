<%@ Page Title="Code Cracker" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CodeCracker.aspx.cs" Inherits="AWTQuest.CodeCracker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5 mb-5">
        <div class="text-center mb-4">
            <h1 class="fw-bold text-danger">🕵️‍♂️ The Code Cracker</h1>
            <p class="text-muted">Find the bug in the code to unlock the system. <strong class="text-success">+100 XP</strong></p>
        </div>

        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-lg border-danger">
                    <div class="card-header bg-dark text-white fw-bold">
                        Terminal: Debugging Mode
                    </div>
                    <div class="card-body p-4 bg-light">
                        
                        <asp:MultiView ID="mvCodeGame" runat="server" ActiveViewIndex="0">
                            
                            <asp:View ID="View1" runat="server">
                                <h4 class="text-primary fw-bold">Bug 1 / 3</h4>
                                <pre class="bg-dark text-success p-3 rounded shadow-sm"><code>
protected void Page_Load(object sender, EventArgs e)
{
    if (__________) 
    {
        // Code to run ONLY the first time the page loads
    }
}
                                </code></pre>
                                <p class="fw-bold mt-3">What is missing in the if-statement?</p>
                                <asp:RadioButtonList ID="rblBug1" runat="server" CssClass="mb-3">
                                    <asp:ListItem Value="A">IsPostBack</asp:ListItem>
                                    <asp:ListItem Value="B">!IsPostBack</asp:ListItem>
                                    <asp:ListItem Value="C">Session != null</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:Button ID="btnNext1" runat="server" Text="Compile & Continue" CssClass="btn btn-danger fw-bold w-100" OnClick="btnNext1_Click" />
                                <asp:Label ID="lblErr1" runat="server" CssClass="text-danger fw-bold mt-2 d-block"></asp:Label>
                            </asp:View>

                            <asp:View ID="View2" runat="server">
                                <h4 class="text-primary fw-bold">Bug 2 / 3</h4>
                                <pre class="bg-dark text-success p-3 rounded shadow-sm"><code>
// Trying to save user data globally for everyone
__________["PlayerScore"] = 500;
                                </code></pre>
                                <p class="fw-bold mt-3">Which state management object completes the code?</p>
                                <asp:RadioButtonList ID="rblBug2" runat="server" CssClass="mb-3">
                                    <asp:ListItem Value="A">Application</asp:ListItem>
                                    <asp:ListItem Value="B">Session</asp:ListItem>
                                    <asp:ListItem Value="C">ViewState</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:Button ID="btnNext2" runat="server" Text="Compile & Continue" CssClass="btn btn-danger fw-bold w-100" OnClick="btnNext2_Click" />
                                <asp:Label ID="lblErr2" runat="server" CssClass="text-danger fw-bold mt-2 d-block"></asp:Label>
                            </asp:View>

                            <asp:View ID="View3" runat="server">
                                <h4 class="text-primary fw-bold">Bug 3 / 3</h4>
                                <pre class="bg-dark text-success p-3 rounded shadow-sm"><code>
&lt;asp:TextBox ID="txtName" runat="server"&gt;&lt;/asp:TextBox&gt;
&lt;asp:RequiredFieldValidator ID="req1" runat="server" 
    _____________________="txtName" 
    ErrorMessage="Name is required!"&gt;
&lt;/asp:RequiredFieldValidator&gt;
                                </code></pre>
                                <p class="fw-bold mt-3">Which attribute links the Validator to the TextBox?</p>
                                <asp:RadioButtonList ID="rblBug3" runat="server" CssClass="mb-3">
                                    <asp:ListItem Value="A">TargetControl</asp:ListItem>
                                    <asp:ListItem Value="B">ValidateID</asp:ListItem>
                                    <asp:ListItem Value="C">ControlToValidate</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:Button ID="btnNext3" runat="server" Text="Compile Final Code" CssClass="btn btn-danger fw-bold w-100" OnClick="btnNext3_Click" />
                                <asp:Label ID="lblErr3" runat="server" CssClass="text-danger fw-bold mt-2 d-block"></asp:Label>
                            </asp:View>

                            <asp:View ID="ViewWin" runat="server">
                                <div class="text-center py-4">
                                    <h2 class="text-success fw-bold">✅ System Restored!</h2>
                                    <p class="text-muted">You found all the bugs and earned 100 XP.</p>
                                    <a href="Dashboard.aspx" class="btn btn-success btn-lg fw-bold mt-3">Back to Hub</a>
                                </div>
                            </asp:View>

                        </asp:MultiView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>