<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="Content/StyleSheet.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-text">
            <h1>Welcome to Furniture & Living</h1>
            <p>Transform your space with our curated selection of stylish furniture.</p>
        </div>
    </section>

    <!-- Furniture Banner -->
    <div class="furniture-banner">
        <div class="text-content">
            <h1>Best Collection</h1>
            <h2>New Furniture</h2>
            <asp:Button ID="btnShopNowBanner" runat="server" CssClass="shop-now-btn" 
                Text="Shop Now" onclick="btnShopNowBanner_Click" />
        </div>
        <div class="image-content">
            <img src="Images/home-3678955.jpg" alt="New Furniture" />
        </div>
    </div>

    <!-- Product Preview Section -->
    <section class="product-preview">
        <h2>Our Products</h2>
        <div class="product-grid">
            <div class="product-item">
                <img src="Images/home-3678955.jpg" alt="Sofa" />
                <h3>Comfortable Sofa</h3>
                <p>Modern and comfortable designs for your living room.</p>
                <asp:Button ID="btnViewMoreSofa" runat="server" CssClass="button" Text="View More" />
            </div>
            <div class="product-item">
                <img src="Images/Sofa1.jpg" alt="Table" />
                <h3>Elegant Tables</h3>
                <p>Perfect for dining or working, crafted with precision.</p>
                <asp:Button ID="btnViewMoreTable" runat="server" CssClass="button" Text="View More" />
            </div>
            <div class="product-item">
                <img src="Images/sofa-6185021.jpg" alt="Bed" />
                <h3>Cozy Beds</h3>
                <p>Experience ultimate comfort with our premium beds.</p>
                <asp:Button ID="btnViewMoreBed" runat="server" CssClass="button" Text="View More" />
            </div>
            <div class="product-item">
                <img src="Images/sofa-6185021.jpg" alt="Bed" />
                <h3>Cozy Beds</h3>
                <p>Experience ultimate comfort with our premium beds.</p>
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="View More" />
            </div>
        </div>
    </section>

    <!-- About Us Section -->
    <div class="about-section">
        <div class="image-container">
            <img src="Images/living-room-8480223.jpg" alt="Decorative Shelves" />
        </div>
        <div class="text-container">
            <h1><b>About Us</b></h1>
            <h3>Welcome to Furniture & Living</h3>
            <p>At Furniture & Living, we believe in creating living spaces that reflect your unique style and needs. Our collection of high-quality furniture and home accessories are carefully selected to provide both elegance and functionality for your home.</p>
            <asp:Button ID="btnReadMoreAbout" runat="server" CssClass="btn-read-more" 
                Text="Read More" onclick="btnReadMoreAbout_Click" />
        </div>
    </div>
</asp:Content>
