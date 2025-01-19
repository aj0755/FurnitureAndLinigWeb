<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgotpassword.aspx.cs" Inherits="Forgotpassword" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password | Furniture Shop</title>
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
            background: linear-gradient(to right, #000000, #555555); /* Elegant background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Container */
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            max-width: 450px;
            padding: 30px;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            margin: 10px;
        }

        /* Form */
        .login-form {
            width: 100%;
            padding: 30px;
            text-align: center;
        }

        h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #3e3e3e;
            font-weight: bold;
        }

        .input-group {
            margin-bottom: 5px;
            text-align: left;
        }

        .input-group label {
            font-size: 14px;
            color: #555;
            display: block;
            margin-bottom: 5px;
        }

        .input-group input {
            width: 100%;
            padding: 12px;
            margin-top: 5px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .input-group input:focus {
            border-color: #000000;
            outline: none;
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
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #000000;
        }

        /* Links */
        .links {
            margin-top: 20px;
        }

        .links a {
            text-decoration: none;
            color: #333;
            font-size: 14px;
            margin: 0 10px;
        }

        .links a:hover {
            color: #000000;
        }

        /* Error Message */
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
            text-align: center;
        }

        .error-message span {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-form">
            <h2>Reset Your Password</h2>
            <form id="Form1" runat="server">
                <!-- Email Field -->
                <div class="input-group">
                    <label for="email">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter your email address" CssClass="input-group" AutoComplete="off" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Please enter your email address" 
                        ForeColor="Red" />
                    <asp:RegularExpressionValidator ID="RegexEmailValidator" runat="server" 
                        ControlToValidate="txtEmail" 
                        ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" 
                        ErrorMessage="Please enter a valid email address" 
                        ForeColor="Red" />
                </div>

                <!-- Reset Button -->
                <asp:Button ID="btnSendResetLink" runat="server" Text="Send Reset Link" 
                    CssClass="btn" onclick="btnSendResetLink_Click" />

                <!-- Message -->
                <div class="error-message">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false" />
                </div>
            </form>

            <div class="links">
                <a href="Loginpage.aspx">Back to Login</a>
            </div>
        </div>
    </div>
</body>
</html>
