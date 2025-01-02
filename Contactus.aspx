<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="Content/FurnitureContact.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="contact-page">
        <!-- Main Contact Section -->
        <div class="contact-container">
            <div class="form-section">
                <h3>GET IN TOUCH WITH US</h3>
                <h1>LEAVE A MESSAGE</h1>
                <asp:TextBox ID="txtFirstName" CssClass="form-control half" Placeholder="First Name" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtLastName" CssClass="form-control half" Placeholder="Last Name" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtEmail" CssClass="form-control full" Placeholder="Email Address" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtSubject" CssClass="form-control full" Placeholder="Subject" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtMessage" TextMode="MultiLine" CssClass="form-control full" Placeholder="Your Message" runat="server"></asp:TextBox>
                <asp:Button ID="btnSubmit" CssClass="submit-button" Text="Submit" runat="server" />
            </div>
            <div class="info-section">
                <h3>CONTACT INFO</h3>
                <p>166 Main Street, Beverly Hills CA, 90210</p>
                <ul>
                    <li><strong>Phone:</strong>+91 8160679016</li>
                    <li><strong>Fax:</strong> +0045 485 3648</li>
                    <li><strong>Email:</strong> say.hi@innerside.com</li>
                    <li><strong>Website:</strong> <a href="https://innerside.com">https://innerside.com</a></li>
                    <li><strong>Open:</strong> Monday – Friday 08:00AM – 08:00PM</li>
                </ul>             
            </div>
        </div>
    </div>

</asp:Content>
