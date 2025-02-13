﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Loginpage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = true; // Hide error message initially
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM TDH_User WHERE Email = '" + txtUsername.Text + "' AND Password = '" + txtPassword.Text + "'");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.HasRows)
            {
                Session["UserEmail"] = txtUsername.Text;
                string script = "alert('Login successful!'); window.location='Homepage.aspx';";
                ClientScript.RegisterStartupScript(this.GetType(), "LoginSuccess", script, true);
            }
            else
            {
                lblErrorMessage.Text = "Invalid email and password!";
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = "Error: " + ex.Message;
        }
    }
}