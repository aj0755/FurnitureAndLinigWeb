using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = true;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Admin_login WHERE U_name = '" + txtUsername.Text + "' AND Password = '" + txtPassword.Text + "'");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.HasRows)
            {
                Session["UserEmail"] = txtUsername.Text;
                lblErrorMessage.Text = "Login successful!";
                lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("Admin_homepage.aspx");
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