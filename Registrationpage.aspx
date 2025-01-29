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
    height: 120vh;
    margin: 0;
    animation: fadeIn 1.5s ease-in-out;
}

/* Fade-in animation */
@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

/* Fade-out animation */
@keyframes fadeOut {
    from {
        opacity: 1;
    }
    to {
        opacity: 0;
    }
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
    animation: fadeIn 1.5s ease-in-out;
}

/* Form */
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
    animation: fadeIn 1.2s ease-in-out;
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
/* OTP Modal Styling */
.modal {
    display: inline-block;
    position: relative;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    justify-content: center;
    align-items: center;
}

.modal-content {
    background-color: #fff;
    padding: 2rem;
    border-radius: 8px;
    margin:50px auto;
    width: 60%;
    text-align: center;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.modal .input-box {
    margin: 1rem 0;
    padding: 0.5rem;
    width: 100%;
    border: 1px solid #ccc;
    border-radius: 5px;
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
                    ControlToValidate="txtFullName" ErrorMessage="Full Name is required!" 
                    Font-Bold="False" Font-Size="Small" ForeColor="#F20000" />
            </div>

            <!-- Email -->
            <div class="input-group">
                <label for="email">Email Address</label>
                <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter your email" CssClass="input-group" AutoComplete="off" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email is required!" 
                    Font-Bold="False" Font-Size="Small" ForeColor="#F20000" />
                <br />
                <asp:RegularExpressionValidator ID="RegexEmailValidator" runat="server" 
                    ControlToValidate="txtEmail" 
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" 
                    ErrorMessage="Please enter a valid email address" 
                    ForeColor="#F20000" Font-Size="Small" />
            </div>

            <!-- Phone Number -->
            <div class="input-group">
                <label for="phone">Phone Number</label>
                <asp:TextBox ID="txtPhoneNumber" runat="server" Placeholder="Enter your phone number" CssClass="input-group" AutoComplete="off" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtPhoneNumber" ErrorMessage="Phone number is required!" 
                    Font-Bold="False" Font-Size="Small" ForeColor="#F20000" />
                <br />
                <asp:RegularExpressionValidator ID="RegexPhoneValidator" runat="server" 
                    ControlToValidate="txtPhoneNumber" 
                    ValidationExpression="^\d{10}$" 
                    ErrorMessage="Please enter a valid 10-digit phone number" 
                    ForeColor="#F20000" Font-Size="Small" />
            </div>

            <!-- Password -->
            <div class="input-group">
                <label for="password">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Enter your password" CssClass="input-group" AutoComplete="off" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Password is required!" 
                    Font-Bold="False" Font-Size="Small" ForeColor="#F20000" />
                <br />
                <asp:RegularExpressionValidator ID="RegexPasswordValidator" runat="server" 
                    ControlToValidate="txtPassword" 
                    ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d@$!%*?&amp;]{8,}$" 
                    ErrorMessage="Password must be 6-20 characters long, and include both letters and numbers" 
                    ForeColor="#F20000" Font-Size="Small" />
            </div>

            <!-- Confirm Password -->
            <div class="input-group">
                <label for="confirmPassword">Confirm Password</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Placeholder="Confirm your password" CssClass="input-group" AutoComplete="off" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required!" 
                    Font-Bold="False" Font-Size="Small" ForeColor="#F20000" />
                <br />
                <asp:CompareValidator ID="ComparePasswordValidator" runat="server" 
                    ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Passwords do not match" 
                    ForeColor="#F20000" Font-Size="Small" />
            </div>

            <!-- Register Button -->
            <asp:Button ID="btnRegister" runat="server" Text="SIGN UP" CssClass="btn" onclick="btnRegister_Click" />

            <!-- Error Message -->
            <div class="error-message">
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="false" />
            </div>

            <!-- OTP Verification Modal -->
        <div id="otpModal" class="modal" runat="server" visible="false">
            <div class="modal-content">
                <h3>Verify Your Email</h3>
                <p>An OTP has been sent to your email. Please enter it below:</p>
                <asp:TextBox ID="txtOtp" runat="server" CssClass="input-box" Placeholder="Enter OTP"></asp:TextBox>
                <asp:Button ID="btnVerifyOtp" runat="server" Text="Verify OTP" CssClass="btn-submit" OnClick="btnVerifyOtp_Click" />
                <asp:Label ID="lblOtpMessage" runat="server" CssClass="error-message"></asp:Label>
            </div>
        </div>
        </form>

        <div class="links">
            <a href="Loginpage.aspx">Already have an account? Log in</a>
        </div>
    </div>
</div>


</body>
</html>
