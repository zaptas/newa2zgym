using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;

namespace A2ZGymSolution
{
    public partial class main : System.Web.UI.MasterPage
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        SqlCommand com;

        protected void Page_Load(object sender, EventArgs e)
        {


        }



        protected void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {
                conn.Open();
                LoginInfo ob = new LoginInfo();

                ob.username = signinemail.Value;
                ob.password = signinpassword.Value;
                LoginInfoService objService = new LoginInfoService();
                string information = objService.loginUser(ob);
                string[] info = information.Split(';');
                string URL = string.Empty;
                if (!string.IsNullOrEmpty(information))
                {
                    Session["UserId"] = info[0].ToString();
                    Session["UserName"] = info[1].ToString();
                    // Session["GymEmail"] = info[2].ToString();
                    Session.Timeout = 60;
                    URL = "~/UserProfile.aspx";
                    Response.Redirect(URL);


                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Authentication Failed / Try Again')</script>");
                }
            }
            catch
            {

            }
            finally
            {
                conn.Close();
            }


        }
        string userid = "";
        protected void btnNewUser_Click(object sender, EventArgs e)
        {

            try
            {
                conn.Open();
                UserregistrationInfo ob = new UserregistrationInfo();
                ob.date = System.DateTime.Now.ToShortDateString();
                //ob.userid = txtName.Text;
                ob.userName = signupusername.Value;
                ob.email = signupemail.Value;
                ob.password = signuppassword.Value;
                ob.pincode = signupconfirmpassword.Value;
                ob.mobile = signupmobile.Value;
                // ob.address = txtadress.Text;

                string uniqueValue = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 6).ToUpper();

                if (Chkuser.Checked == true)
                {
                    ob.agree = "Y";
                }
                else
                {
                    ob.agree = "N";
                }

                UserRegistrationinfoService objService = new UserRegistrationinfoService();
                userid = objService.userRegister(ob);
                if (userid != null && userid != "")
                {

                    var fromEmailAddress = ConfigurationManager.AppSettings["FromEmailAddress"].ToString();
                    var fromEmailDisplayName = ConfigurationManager.AppSettings["FromEmailDisplayName"].ToString();
                    var fromEmailPassword = ConfigurationManager.AppSettings["FromEmailPassword"].ToString();


                    System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                    
                    mail.To.Add(signupemail.Value);
                    mail.From = new MailAddress(fromEmailAddress, fromEmailDisplayName, System.Text.Encoding.UTF8);
                    mail.Subject = "SignUp Confirmation to A2Z Gym";
                    mail.SubjectEncoding = System.Text.Encoding.UTF8;
                    string bd = GetGeneratedHtmlTemplateForOrder();
                    mail.Body = bd;
                    mail.BodyEncoding = System.Text.Encoding.UTF8;
                    mail.IsBodyHtml = true;
                    mail.Priority = System.Net.Mail.MailPriority.High;

                    SmtpClient client = new SmtpClient();
                    client.Credentials = new System.Net.NetworkCredential(fromEmailAddress, fromEmailPassword);
                    client.Port = 587;
                    client.Host = "smtp.gmail.com";
                    client.EnableSsl = true;

                    try
                    {

                        //LblMsg.Text = "Email to traveller has has been sent successfully.";
                        client.Send(mail);

                    }
                    catch (Exception ex)
                    {
                        Exception ex2 = ex;
                        string errorMessage = string.Empty;
                        while (ex2 != null)
                        {
                            errorMessage += ex2.ToString();
                            ex2 = ex2.InnerException;
                        }
                    }

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Your Credentail has been send on your Email')</script>");
                    signupusername.Value = "";
                    signupemail.Value = "";
                    signuppassword.Value = "";
                    signupconfirmpassword.Value = "";
                    signupmobile.Value = "";
                    signuppincode.Value = "";

                }

                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Something went wrong!! Please check entered credentials.')</script>");
                }

            }

            catch (Exception ex)
            {
              
                string description = ex.Message.ToString();
                if (description.Contains("EmailId Already Registered!"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Entered emailid already registered')</script>");
                }

                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Something went wrong!! Please check entered credentials.')</script>");
                }
            }
            finally
            {

                conn.Close();
            }
        }
        public void CleartextBoxes(Control parent)
        {

            foreach (Control c in parent.Controls)
            {
                if ((c.GetType() == typeof(TextBox)))
                {

                    ((TextBox)(c)).Text = "";
                }

                if (c.HasControls())
                {
                    CleartextBoxes(c);
                }
            }
        }

        public string GetGeneratedHtmlTemplateForOrder()
        {
            String htmlTemplate = "";
            var filePath = String.Empty;
            filePath = Server.MapPath("~") + "/Templete/Mail.html";
            using (StreamReader reader = new StreamReader(filePath))
            {
                htmlTemplate = reader.ReadToEnd();
            }
            htmlTemplate = htmlTemplate.Replace("{Email}", userid);
            htmlTemplate = htmlTemplate.Replace("{user}", signupusername.Value.ToString());
            htmlTemplate = htmlTemplate.Replace("{Password}", signuppassword.Value.ToString());

            return htmlTemplate;
        }

      
    }
}