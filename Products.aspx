<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <link rel="stylesheet" href="Content/StyleSheet.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


    <!-- Sofas Section -->
    <section class="product-section" id="sofas">
        <h2>Sofas</h2>
        <div class="product-grid">
            <div class="product-item">
                <img src="Images/sofa1.jpg" alt="Modern Sofa">
                <h3>Modern Sofa</h3>
                <p>Comfortable and stylish modern sofa for your living room.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
            <div class="product-item">
                <img src="Images/Sofa_img2.jpg" alt="Classic Sofa">
                <h3>Classic Sofa</h3>
                <p>Elegant design with premium materials for a timeless look.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
            <div class="product-item">
                <img src="Images/Sofa_img1.jpeg" alt="Recliner Sofa">
                <h3>Recliner Sofa</h3>
                <p>Luxurious recliner sofa for ultimate relaxation.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
        </div>
    </section>

    <!-- Curtains Section -->
    <section class="product-section" id="curtains">
        <h2>Curtains</h2>
        <div class="product-grid">
            <div class="product-item">
                <img src="Images/curtain1.jpg" alt="Blackout Curtains">
                <h3>Blackout Curtains</h3>
                <p>Perfect for blocking sunlight and enhancing privacy.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
            <div class="product-item">
                <img src="Images/curtain2.jpg" alt="Sheer Curtains">
                <h3>Sheer Curtains</h3>
                <p>Add elegance and style to your home with our sheer curtains.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
            <div class="product-item">
                <img src="Images/curtain3.jpg" alt="Patterned Curtains">
                <h3>Patterned Curtains</h3>
                <p>Vibrant patterns to complement your decor.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
        </div>
    </section>

    <!-- Chairs Section -->
    <section class="product-section" id="chairs">
        <h2>Chairs</h2>
        <div class="product-grid">
            <div class="product-item">
                <img src="Images/chair1.jpg" alt="Office Chair">
                <h3>Office Chair</h3><a href="MasterPage.master">MasterPage.master</a>
                <p>Ergonomic design for comfortable working hours.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
            <div class="product-item">
                <img src="Images/chair2.jpg" alt="Accent Chair">
                <h3>Accent Chair</h3>
                <p>Stylish accent chair to enhance your room's decor.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
            <div class="product-item">
                <img src="Images/chair3.jpg" alt="Rocking Chair">
                <h3>Rocking Chair</h3>
                <p>Classic rocking chair for relaxation.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
        </div>
    </section>

    <!-- Beds Section -->
    <section class="product-section" id="beds">
        <h2>Beds</h2>
        <div class="product-grid">
            <div class="product-item">
                <img src="Images/bed1.jpg" alt="King Size Bed">
                <h3>King Size Bed</h3>
                <p>Spacious and luxurious for a good night's sleep.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
            <div class="product-item">
                <img src="Images/storage-bed.jpg" alt="Storage Bed">
                <h3>Storage Bed</h3>
                <p>Smart design with additional storage space.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
            <div class="product-item">
                <img src="Images/bunk-bed.jpg" alt="Bunk Bed">
                <h3>Bunk Bed</h3>
                <p>Perfect for kids' rooms with limited space.</p>
                <a href="#" class="buy-now-btn">Buy Now</a>
            </div>
        </div>
    </section>


</asp:Content>

