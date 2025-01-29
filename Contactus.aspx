<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="Content/FurnitureContact.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="contact-page">
        <!-- Main Contact Section -->
        <div class="contact-container">
            <!-- Form Section -->
            <div class="form-section">
                <h3>GET IN TOUCH WITH US</h3>
                <h1>LEAVE A MESSAGE</h1>
                <asp:TextBox ID="txtFirstName" CssClass="form-control half" Placeholder="First Name" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtLastName" CssClass="form-control half" Placeholder="Last Name" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtEmail" CssClass="form-control full" Placeholder="Email Address" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtSubject" CssClass="form-control full" Placeholder="Subject" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtMessage" TextMode="MultiLine" CssClass="form-control full" Placeholder="Your Message" runat="server"></asp:TextBox>
                <asp:Button ID="btnSubmit" CssClass="submit-button" Text="Submit" 
                    runat="server" onclick="btnSubmit_Click" />
            </div>

            <!-- Info Section -->
            <div class="info-section">
                <h3>CONTACT INFO</h3>
                <p>166 Main Street, Beverly Hills CA, 90210</p>
                <ul>
                    <li><strong>Phone:</strong> +91 8160679016</li>
                    <li><strong>Fax:</strong> +0045 485 3648</li>
                    <li><strong>Email:</strong> say.hi@innerside.com</li>
                    <li><strong>Website:</strong> <a href="https://innerside.com">https://innerside.com</a></li>
                    <li><strong>Open:</strong> Monday – Friday 08:00AM – 08:00PM</li>
                </ul>
            </div>

            <!-- Google Map Section -->
            <div class="map-section">
                <center><h1><b>OUR LOCATION</b></h1></center><br />
                <iframe 
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3303.900746355206!2d-118.40682878488291!3d34.073620124391795!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2be9b9f1f9e45%3A0x9a47b5b633957a8b!2s166%20N%20Canon%20Dr%2C%20Beverly%20Hills%2C%20CA%2090210%2C%20USA!5e0!3m2!1sen!2sin!4v1696516461697!5m2!1sen!2sin" 
                    allowfullscreen=""
                    loading="lazy" 
                    referrerpolicy="no-referrer-when-downgrade">
                </iframe>
            </div>
        </div>
    </div>
</asp:Content>
