using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
 public  class ContactusManager
    {
     public string UserQueryMail(ContactusInfo ob)
     {
         string MethodName = "UserQueryMail";
         string validate = "";
         try
         {


             MailMessage Msg = new MailMessage();
             // Sender e-mail address.
             Msg.From = new MailAddress("a2zgyminfo@gmail.com", "A2ZGYM");
             // Recipient e-mail address.
             Msg.To.Add("enquiry@zaptas.com");
             Msg.Subject = "New Enquiry from A2Z Gym Website";
             Msg.Body = "Name : " + ob.userName + "\n Email Id: " + ob.email + "\n Query : " +ob.Subject;
             // your remote SMTP server IP.
             SmtpClient smtp = new SmtpClient();
             smtp.Host = "smtp.gmail.com";
             smtp.Port = 587;
             smtp.Credentials = new System.Net.NetworkCredential("a2zgyminfo@gmail.com", "a2zgym@123");
             smtp.EnableSsl = true;
             smtp.Send(Msg);
             Msg = null;
         }

         catch (Exception ex)
         {
             string description = ex.Message.ToString();

             // validate = "";
         }

         return validate;
     }


    }
}
