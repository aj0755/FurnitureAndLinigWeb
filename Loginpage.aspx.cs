using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Loginpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = false; // Hide error message initially
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();

        // Simulating authentication (replace with actual authentication logic)
        if (AuthenticateUser(username, password))
        {
            // Redirect to homepage if credentials are correct
            Response.Redirect("Homepage.aspx");
        }
        else
        {
            // Show error message if credentials are incorrect
            lblErrorMessage.Text = "Invalid username or password. Please try again.";
            lblErrorMessage.Visible = true;
        }
    }
    private bool AuthenticateUser(string username, string password)
    {
        // Replace with your actual authentication logic (e.g., checking from database)
        return username == "aryan2107" && password == "password123"; // Example credentials
    }
}