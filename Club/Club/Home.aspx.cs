using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox2.Enabled = false;
            TextBox2.Text = "anouar.ab95@gmail.com";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                MailMessage message = new MailMessage(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com",587);
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("anouar.ab95@gmail.com", "Ha191418");
                client.Send(message);
                Label1.Text = "Your Mail send successfully";
            }
            catch (Exception sd)
            {
                Label1.Text = sd.StackTrace;
            }
        }
    }
}