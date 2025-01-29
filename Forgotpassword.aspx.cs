using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
public partial class Forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSendResetLink_Click1(object sender, EventArgs e)
    {
        string userEmail = txtEmail.Text.Trim();

        if (string.IsNullOrEmpty(userEmail))
        {
            lblMessage.Text = "Please enter a valid email address.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Visible = true;
            return;
        }

        try
        {
            // Generate a unique reset password link (For example, replace with your actual link generation logic)
            string resetLink = "http://localhost:59338/FurnitureAndLinigWeb/Forgotpassword.aspx" + Server.UrlEncode(userEmail);

            // SMTP Configuration
            string smtpAddress = "smtp.gmail.com"; // e.g., smtp.gmail.com
            int portNumber = 587; // Typically 587 for TLS or 465 for SSL
            bool enableSSL = true;

            string emailFrom = "thedecorhubb@gmail.com";
            string password = "bepe jgcs gilv nzpu"; // Your email password
            string emailTo = userEmail;
            string subject = "Reset Your Password";
            string body = "Click the link below to reset your password:<br/><br/>" + resetLink;

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
                    smtp.EnableSsl = enableSSL;
                    smtp.Send(mail);
                }
            }

            lblMessage.Text = "A password reset link has been sent to your email address.";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Visible = true;
        }
        catch (Exception ex)
        {
            lblMessage.Text = "An error occurred while sending the email. Please try again later. " + ex.Message;
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Visible = true;
        }
    }
}