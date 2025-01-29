<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sofas.aspx.cs" Inherits="Sofas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<section class="sofa-section">
        <h1 class="section-title">Our Sofa Collection</h1>
        <div class="sofa-grid">
            <!-- Sofa 1 -->
            <div class="sofa-item">
                <img src="Images/noah%20furniture.png" alt="Modern Sofa" />
                <h2>Modern Sofa</h2>
                <asp:Button ID="btnDetails1" runat="server" CssClass="details-button" Text="View Details" CommandArgument="1" />
            </div>
            <!-- Sofa 2 -->
            <div class="sofa-item">
                <img src="Content/Images/sofa2.jpg" alt="Classic Sofa" />
                <h2>Classic Sofa</h2>
                <asp:Button ID="btnDetails2" runat="server" CssClass="details-button" Text="View Details" CommandArgument="2" />
            </div>
            <!-- Sofa 3 -->
            <div class="sofa-item">
                <img src="Content/Images/sofa3.jpg" alt="Luxury Sofa" />
                <h2>Luxury Sofa</h2>
                <asp:Button ID="btnDetails3" runat="server" CssClass="details-button" Text="View Details" CommandArgument="3" />
            </div>
            <!-- Sofa 4 -->
            <div class="sofa-item">
                <img src="Content/Images/sofa4.jpg" alt="Compact Sofa" />
                <h2>Compact Sofa</h2>
                <asp:Button ID="btnDetails4" runat="server" CssClass="details-button" Text="View Details" CommandArgument="4" />
            </div>
        </div>
    </section>

    <!-- Modal Section -->
    <div id="modal" class="modal">
        <div class="modal-content">
            <span class="close-button" onclick="closeModal()">×</span>
            <div id="modal-details"></div>
        </div>
    </div>
</asp:Content>

