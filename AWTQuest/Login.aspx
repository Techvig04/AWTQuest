<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AWTQuest.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row justify-content-center mt-5">
        <div class="col-md-5">
            <div class="card shadow border-0 rounded-lg">
                <div class="card-header bg-dark text-white text-center py-3">
                    <h3 class="font-weight-light my-2">Player Login</h3>
                </div>
                <div class="card-body p-4">
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger fw-bold mb-3 d-block"></asp:Label>

                    <div class="mb-3">
                        <label class="fw-bold">Username</label>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required!" CssClass="text-danger small"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label class="fw-bold">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder=""></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!" CssClass="text-danger small"></asp:RequiredFieldValidator>
                    </div>

                    <asp:Button ID="btnLogin" runat="server" Text="Login to Play" CssClass="btn btn-success w-100 py-2 fw-bold" OnClick="btnLogin_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>