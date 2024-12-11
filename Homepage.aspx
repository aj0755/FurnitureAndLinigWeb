<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<link rel="stylesheet" href="Content/StyleSheet.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<section class="hero">
        <div class="hero-text">
            <h1>Welcome to Furniture & Living</h1>
            <p>Transform your space with our curated selection of stylish furniture.</p>
            <a href="Products.aspx" class="button">Shop Now</a>
        </div>
    </section>
    <section class="product-preview">
        <h2>Our Products</h2>
        <div class="product-grid">
            <div class="product-item">
                <img src="Images/home-3678955.jpg" alt="Sofa" />
                <h3>Comfortable Sofa</h3>
                <p>Modern and comfortable designs for your living room.</p>
                <a href="Products.aspx" class="button">View More</a>
            </div>
            <div class="product-item">
                <img src="Images/Sofa1.jpg" alt="Table" />
                <h3>Elegant Tables</h3>
                <p>Perfect for dining or working, crafted with precision.</p>
                <a href="Products.aspx" class="button">View More</a>
            </div>
            <div class="product-item">
                <img src="Images/sofa-6185021.jpg" alt="Bed" />
                <h3>Cozy Beds</h3>
                <p>Experience ultimate comfort with our premium beds.</p>
                <a href="Products.aspx" class="button">View More</a>
            </div>
        </div>
    </section>

</asp:Content>

