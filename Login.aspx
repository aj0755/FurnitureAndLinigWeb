<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<section class="login-section">
        <div class="login-box">
            <h2>Login</h2>
            <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-input"></asp:TextBox>
            <br />
            <asp:Label ID="lbl1Password" runat="server" Text="Password:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-input" TextMode="Password"></asp:TextBox>
            <div class="remember-me">
                <label>
                    <asp:CheckBox ID="chkRememberMe" runat="server" />
                    Remember Me
                </label>
                <a href="#" class="forgot-password">Forgot Password?</a>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-button"/>
        </div>
    </section>
</asp:Content>

