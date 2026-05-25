<%@ Page Title="Module 5" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Module5.aspx.cs" Inherits="AWTQuest.Module5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4 mb-5">
        <div class="card shadow-lg border-0">
            <div class="card-header bg-primary text-white"><h3 class="mb-0 fw-bold">🌐 Module 5: Web Services & WCF</h3></div>
            <div class="card-body p-5">
                <h5 class="text-primary border-bottom pb-2">Deep Dive Explanation</h5>
                <p>Web Services allow different applications to talk to each other over the internet. <strong>WCF (Windows Communication Foundation)</strong> is Microsoft's framework for building these connected systems securely. WCF is built on the "ABC" concept: <strong>Address</strong> (Where is the service?), <strong>Binding</strong> (How do we talk to it? HTTP/TCP?), and <strong>Contract</strong> (What methods can we call?).</p>
                
                <div class="alert alert-light border-start border-primary border-4 mt-4">
                    <h5 class="fw-bold">Resources & Scrolls:</h5>
                    <p class="mb-1"><strong>📚 Reference Books:</strong> <em>Learning WCF</em> by Michele Leroux Bustamante</p>
                    <p class="mb-1"><strong>▶️ YouTube:</strong> <a href="https://www.youtube.com/watch?v=l_aK8U4q_V4" target="_blank">Kudvenkat - WCF Tutorial for Beginners</a></p>
                    <p class="mb-0"><strong>🌐 Websites:</strong> <a href="https://learn.microsoft.com/en-us/dotnet/framework/wcf/whats-wcf" target="_blank">Microsoft Docs - What is WCF?</a></p>
                </div>
                
                <div class="mt-4"><a href="Learn.aspx" class="btn btn-dark fw-bold">⬅ Back to Library</a></div>
            </div>
        </div>
    </div>
</asp:Content>