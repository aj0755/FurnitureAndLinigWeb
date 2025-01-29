<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Furniture Shop</title>
    <style>
 /* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body */
body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to right, #555555, #000000); /* Elegant, warm background for a furniture shop */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    animation: fadeIn 1.5s ease-in-out;
}

/* Fade-In Animation */
@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

/* Fade-Out Animation */
@keyframes fadeOut {
    from {
        opacity: 1;
    }
    to {
        opacity: 0;
    }
}

/* Login Container */
.login-container {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    max-width: 450px;
    padding: 20px;
    background-color: white;
    border-radius: 15px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    margin: 10px;
    animation: fadeIn 1.5s ease-in-out;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.login-container:hover {
    transform: scale(1.02);
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
}

/* Login Form */
.login-form {
    width: 100%;
    padding: 30px;
    text-align: center;
    animation: fadeIn 1.2s ease-in-out;
}

h2 {
    font-size: 28px;
    margin-bottom: 30px;
    color: #3e3e3e;
    font-weight: bold;
    animation: fadeIn 1.5s ease-in-out;
}

.input-group {
    margin-bottom: 0px;
    text-align: left;
}

.input-group label {
    font-size: 14px;
    color: #555;
    display: block;
    margin-bottom: 5px;
    transition: color 0.3s ease;
}

.input-group label:hover {
    color: #000000;
}

.input-group input {
    width: 100%;
    padding: 12px;
    margin-top: 5px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
    transition: border-color 0.3s ease, transform 0.2s ease;
}

.input-group input:focus {
    border-color: #000000;
    outline: none;
    transform: scale(1.02);
}

/* Buttons */
.btn {
    width: 100%;
    padding: 14px;
    background-color: #333;
    border: none;
    border-radius: 5px;
    color: white;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

.btn:hover {
    background-color: #000000;
    
}

/* Links */
.links {
    margin-top: 15px;
}

.links a {
    text-decoration: none;
    color: #333;
    font-size: 14px;
    margin: 0 10px;
    transition: color 0.3s ease, text-decoration 0.3s ease;
}

.links a:hover {
    color: #000000;
    text-decoration: underline;
}

/* Error Message */
.error-message {
    color: red;
    font-size: 14px;
    margin-top: 10px;
    text-align: center;
    animation: fadeIn 1s ease-in-out;
}

.error-message span {
    font-weight: bold;
}

/* Add fade-in/out effect for elements appearing/disappearing */
.hidden {
    animation: fadeOut 0.8s ease-in-out;
    display: none;
}

.visible {
    animation: fadeIn 0.8s ease-in-out;
    display: block;
}

    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-form">
            <h2>Admin login page</h2>
            <form id="Form1" runat="server">
                <!-- Username Field -->
                <div class="input-group">
                    <label for="username">Username</label>
                    <asp:TextBox ID="txtUsername" runat="server" Placeholder="Enter your username" CssClass="input-group" AutoComplete="off" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUsername" ErrorMessage="Please enter your username" 
                        Font-Bold="False" Font-Size="Small" ForeColor="#F20000" />
                    <br />
                    <asp:RegularExpressionValidator ID="RegexUsernameValidator" runat="server" 
                        ControlToValidate="txtUsername" 
                        ValidationExpression="^[a-zA-Z0-9]{5,20}$" 
                        ErrorMessage="Username must be 5-20 characters long, and contain only letters and numbers" 
                        ForeColor="#F20000" Font-Size="Small" />
                </div>

                <!-- Password Field -->
                <div class="input-group">
                    <label for="password">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Enter your password" CssClass="input-group" AutoComplete="off" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Please enter your password" 
                        Font-Bold="False" Font-Size="Small" ForeColor="#F20000" />
                    <br />
                    <asp:RegularExpressionValidator ID="RegexPasswordValidator" runat="server" 
                        ControlToValidate="txtPassword" 
                        ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d@$!%*?&amp;amp;]{8,}$" 
                        ErrorMessage="Password must be 6-20 characters long, and include both letters and numbers" 
                        ForeColor="#F20000" Font-Size="Small" />
                </div>

                <!-- Login Button -->
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" 
                    onclick="btnLogin_Click" />

                <!-- Error Message -->
                <div class="error-message">
                    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="false" />
                </div>
            </form>

            <div class="links">
                <a href="Forgotpassword.aspx">Forgot Password?</a>
                <a href="Registrationpage.aspx">Create an Account</a>
            </div>
        </div>
    </div>
</body>
</html>
