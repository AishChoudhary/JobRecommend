using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace JobRecommend
{
    public class NetworkCom
    {

        public NetworkCom()
        {

        }

        public bool SendEmail(string to, string subject, string mesg)
        {
            string email = "aishchoudhary205@gmail.com";
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(email);
            msg.To.Add(to);
            msg.Subject = subject;
            msg.Body = mesg;
            //msg.Bo"Your Otp for password reset is:" + otp

            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = email; //Your Email ID  
            ntwd.Password = "arnav205"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);

            return true;
        }
    }


}