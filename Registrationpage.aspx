<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrationpage.aspx.cs" Inherits="Registrationpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Furniture Shop</title>
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
            background: linear-gradient(to right, #000000, #555555);
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
            padding: 20px;
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
            margin-bottom: 30px;
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
            margin-top: 15px;
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
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-form">
            <h2>CREATE YOUR ACCOUNT</h2>
            <form id="Form1" runat="server">
                <!-- Full Name -->
                <div class="input-group">
                    <label for="fullname">Full Name</label>
                    <asp:TextBox ID="txtFullName" runat="server" Placeholder="Enter your full name" CssClass="input-group" AutoComplete="off" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFullName" ErrorMessage="Please enter your full name" 
                        Font-Bold="False" Font-Size="Small" ForeColor="#F20000" />
                </div>

                <!-- Email -->
                <div class="input-group">
                    <label for="email">Email Address</label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Placeholder="Enter your email address" CssClass="input-group" AutoComplete="off" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Please enter your email address" 
                        Font-Bold="False" Font-Size="Small" ForeColor="#F20000" />
                    <br />
                    <asp:RegularExpressionValidator ID="RegexEmailValidator" runat="server" 
                        ControlToValidate="txtEmail" 
                        ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" 
                        ErrorMessage="Please enter a valid email address" 
                        ForeColor="#F20000" Font-Size="Small" />
                </div>

                <!-- Password -->
                <div class="input-group">
                    <label for="password">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Enter your password" CssClass="input-group" AutoComplete="off" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Please enter your password" 
                        Font-Bold="False" Font-Size="Small" ForeColor="#F20000" />
                    <br />
                    <asp:RegularExpressionValidator ID="RegexPasswordValidator" runat="server" 
                        ControlToValidate="txtPassword" 
                        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,20}$" 
                        ErrorMessage="Password must be 6-20 characters long, and include both letters and numbers" 
                        ForeColor="#F20000" Font-Size="Small" />
                </div>

                <!-- Register Button -->
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" 
                    onclick="btnRegister_Click" />

                <!-- Error Message -->
                <div class="error-message">
                    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="false" />
                </div>
            </form>

            <div class="links">
                <a href="Loginpage.aspx">Already have an account? Log in</a>
            </div>
        </div>
    </div>
</body>
</html>
