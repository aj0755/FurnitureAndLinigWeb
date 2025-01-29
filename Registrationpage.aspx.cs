using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class Registrationpage : System.Web.UI.Page
{
    private static string generatedOtp;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = true;
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
       try
        {
            txtFullName.Attributes["value"] = txtFullName.Text;
            txtEmail.Attributes["value"] = txtEmail.Text;
            txtPhoneNumber.Attributes["value"] = txtPhoneNumber.Text;
            txtPassword.Attributes["value"] = txtPassword.Text;
            txtConfirmPassword.Attributes["value"] = txtConfirmPassword.Text;
            

            string userEmail = txtEmail.Text.Trim();
            generatedOtp = new Random().Next(100000, 999999).ToString();

            string smtpAddress = "smtp.gmail.com";
            int portNumber = 587;
            bool enableSSL = true;

            string emailFrom = "thedecorhubb@gmail.com";
            string password = "bepe jgcs gilv nzpu";
            string emailTo = userEmail;
            string subject = "Reset Your Password";
            string body = "Your Otp is  " + generatedOtp;

            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress(emailFrom);
                mail.To.Add(emailTo);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;

                using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
                {
                    smtp.Credentials = new NetworkCredential(emailFrom, password);
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }
            }

            lblErrorMessage.Text = "A Otp has been sent to your email address.";
            lblErrorMessage.ForeColor = System.Drawing.Color.Green;
            otpModal.Visible = true;
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = "An error occurred while sending the email. Please try again later." + ex.ToString();
            lblErrorMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void btnVerifyOtp_Click(object sender, EventArgs e)
    {
        if (txtOtp.Text == generatedOtp)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO TDH_User (Name, Password, Email, Phone_No,) VALUES ('" + txtFullName.Text + "', '" + txtPassword.Text + "', '" + txtEmail.Text + "', '" + txtPhoneNumber.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();

            Session["UserEmail"] = txtEmail.Text;
            Response.Redirect("Homepage.aspx?message=Account created successfully!");
        }
        else
        {
            lblOtpMessage.Text = "Invalid OTP! Please try again.";
        }
    }
    }

