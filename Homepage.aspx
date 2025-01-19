<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<link rel="stylesheet" href="Content/StyleSheet.css" />
 <style>
        
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.furniture-banner {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    width: 100%; /* Stretch to full width */
    margin: 0; /* Remove margin for full length */
    padding: 30px;
    background-color: #fff;
    border-radius: 0px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    min-height: 80vh; /* Full viewport height */
    box-sizing: border-box; /* Include padding in width calculation */
}

.furniture-banner .text-content {
    flex: 1;
    padding: 20px;
}

.furniture-banner .text-content h1 {
    font-size: 2.8rem;
    color: #333;
    margin: 0;
    margin-bottom: 10px;
}

.furniture-banner .text-content h2 {
    font-size: 1.5rem;
    color: #7d7d7d;
    margin-bottom: 20px;
}

.furniture-banner .text-content p {
    font-size: 1.1rem;
    color: #555;
    margin-bottom: 20px;
    line-height: 1.6;
}

.furniture-banner .text-content .shop-now-btn {
    display: inline-block;
    background-color: #333;
    color: #fff;
    padding: 12px 25px;
    text-decoration: none;
    border-radius: 5px;
    font-size: 1rem;
    transition: background-color 0.3s ease;
}

.furniture-banner .text-content .shop-now-btn:hover {
    background-color: #555;
}

.furniture-banner .image-content {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
}

.furniture-banner .image-content img {
    max-width: 100%;
    height: auto;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

@media (max-width: 768px) {
    .furniture-banner {
        flex-direction: column;
        padding: 20px;
    }

    .furniture-banner .text-content {
        padding: 10px;
    }

    .furniture-banner .text-content h1 {
        font-size: 2rem;
    }

    .furniture-banner .text-content h2 {
        font-size: 1.2rem;
    }

    .furniture-banner .text-content p {
        font-size: 1rem;
    }

    .furniture-banner .image-content img {
        max-width: 90%;
    }
}

<%--about us page for home page--%>

.about-section {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    width: 100%; /* Stretch to full width */
    margin: 0; /* Remove margin for full length */
    padding: 30px;
    background-color: #fff;
    border-radius: 0px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    min-height: 100vh; /* Full viewport height */
    box-sizing: border-box; /* Include padding in width calculation */
}

.image-container {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}

.image-container img {
    max-width: 90%;
    height: auto;
    border-radius: 10px;
}

.text-container {
    flex: 1;
    padding: 20px;
    text-align: left;
}

.text-container h2 {
    font-size: 2rem;
    color: #333333;
    margin-bottom: 20px;
    font-weight: bold;
}

.text-container p {
    font-size: 1.1rem;
    color: #555555;
    line-height: 1.6;
    margin-bottom: 20px;
}

.btn-read-more {
    display: inline-block;
    text-decoration: none;
    background-color: #333333;
    color: #ffffff;
    padding: 10px 20px;
    font-size: 1rem;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.btn-read-more:hover {
    background-color: #555555;
}

@media (max-width: 768px) {
    .about-section {
        flex-direction: column;
    }

    .image-container {
        padding: 10px;
    }

    .text-container {
        padding: 10px;
        text-align: center;
    }

    .text-container h2 {
        font-size: 1.8rem;
    }

    .text-container p {
        font-size: 1rem;
    }
}
    </style>

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
        </div>
    </section>

    <!-- About Us Section -->
    <div class="about-section">
        <div class="image-container">
            <img src="Images/living-room-8480223.jpg" alt="Decorative Shelves" />
        </div>
        <div class="text-container">
            <h1><b>About Us</b></h1>
            <p></p>
            <h3>Welcome to Furniture & Living</h3>
            <p>At Furniture & Living, we believe in creating living spaces that reflect your unique style and needs. Our collection of high-quality furniture and home accessories are carefully selected to provide both elegance and functionality for your home.</p>
            <asp:Button ID="btnReadMoreAbout" runat="server" CssClass="btn-read-more" Text="Read More" />
        </div>
    </div>

</asp:Content>

