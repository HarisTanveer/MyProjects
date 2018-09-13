using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Roshan.DAL;
using System.Net.Mail;
using System.Net;
using System.Windows.Forms;
using System.IO;

namespace Roshan
{
    public partial class Join_us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void joinus_Click(object sender, EventArgs e)
        {
            string n = inputname.Value;
            string em = inputEmail.Value;
            string c = contact.Value;


            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.Port = 587;
            client.EnableSsl = true;
            client.Timeout = 100000;
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("crickethowzat7@gmail.com", "howzathowzat");
            MailMessage msg = new MailMessage();
            msg.To.Add("l164118@lhr.nu.edu.pk");
            msg.From = new MailAddress("crickethowzat7@gmail.com");
            msg.Subject = "A New Talent ";
            msg.Body = "Name : " + n + ". Email: " + em + ". Contact : " + c + ". ";

            if(f1.HasFile)
            {
                string fileName = Path.GetFileName(f1.PostedFile.FileName);
                Attachment myAttachment =
                               new Attachment(f1.FileContent, fileName);
                msg.Attachments.Add(myAttachment);

            }
            if(f2.HasFile)
            {
                string fileName = Path.GetFileName(f2.PostedFile.FileName);
                Attachment myAttachment =
                               new Attachment(f2.FileContent, fileName);
                msg.Attachments.Add(myAttachment);

            }
            if(f3.HasFile)
            {
                string fileName = Path.GetFileName(f3.PostedFile.FileName);
                Attachment myAttachment =
                               new Attachment(f3.FileContent, fileName);
                msg.Attachments.Add(myAttachment);

            }


            client.Send(msg);
            
            MessageBox.Show("Successfully Sent Message.");
            Response.Redirect("index.aspx");
        }
    }
}