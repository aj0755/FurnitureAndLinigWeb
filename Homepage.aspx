﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

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

    <!-- About Us Section -->
    <section id="about" class="about-us-section">
        <div class="container">
            <h1><b>About us</b></h1>
            <h2>Welcome to Furniture & Living</h2>
            <p>At Furniture & Living, we believe in creating living spaces that reflect your unique style and needs. Our collection of high-quality furniture and home accessories are carefully selected to provide both elegance and functionality for your home.</p>
            
            <h2>Our Story</h2>
            <p>Founded in <strong>2010</strong>, Furniture & Living began with the vision of providing exceptional furniture and home décor that enhance everyday living. Over the years, we've expanded our product range, from stylish sofas to custom curtains, to help you make your house truly feel like home. We work with leading designers and manufacturers to ensure that our products meet the highest standards of craftsmanship and durability.</p>

            <h2>Why Choose Us?</h2>
            <ul>
                <li><strong>Quality Materials:</strong> We source only the finest materials to create our products, ensuring longevity and comfort.</li>
                <li><strong>Expert Design:</strong> Our design team is dedicated to creating furniture that is both stylish and functional, designed to fit any home style.</li>
                <li><strong>Customer Satisfaction:</strong> We are committed to providing exceptional customer service, offering personalized advice to help you select the perfect pieces for your home.</li>
                <li><strong>Affordable Prices:</strong> We believe that quality furniture should be accessible to everyone, which is why we offer competitive pricing without compromising on quality.</li>
            </ul>

            <h2>Our Mission</h2>
            <p>Our mission is simple: to provide our customers with beautiful, functional furniture and home accessories that transform their living spaces. Whether you're furnishing a single room or your entire home, we aim to deliver the perfect solution tailored to your style and budget.</p>
        </div>
    </section>
    

</asp:Content>

