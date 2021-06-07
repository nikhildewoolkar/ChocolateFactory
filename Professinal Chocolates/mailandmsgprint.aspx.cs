using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;
using System.IO;
using System.Text;


public partial class mailandmsgprint : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        //MailMessage mail = new MailMessage();
        //string customeremail = (string)Session["email"];
        //mail.To.Add(customeremail);
        //mail.From = new MailAddress("liit@gmail.com");
        //mail.Subject = "Order Confirmation";
        //string msg = "Dear Customer,we have received your Order.<br> It will be delivered in next 3- 4 days.<br>Thank you .<br>9967271104";
        //mail.Body = msg;

        //mail.IsBodyHtml = true;

        ////'Attach file using FileUpload Control and put the file in memory stream

        //SmtpClient smtp = new SmtpClient();
        //smtp.Host = "smtp.gmail.com";
        //smtp.Port = 587;
        ////'Or Your SMTP Server Address
        //smtp.Credentials = new System.Net.NetworkCredential("liit@gmail.com", "password");
        ////Or your Smtp Email ID and Password
        //smtp.EnableSsl = true;
        //smtp.Send(mail);


        ////        To enable sending mail from your account using following code
        //Open your account in gmail,-> My Account ->Apps with Account Access _>Turn ON ->allow access to less secure appps

        

     
    }

    protected void btnPrint_Click(object sender, EventArgs e)
    {
        Response.Redirect("PrintOrder.aspx");
    }
}