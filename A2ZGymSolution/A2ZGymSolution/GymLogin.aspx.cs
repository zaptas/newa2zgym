using BLL;
using DTO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A2ZGymSolution
{
    public partial class GymLogin1 : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            


        }

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        SqlCommand com;
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                GymLoginInfo ob = new GymLoginInfo();

                ob.username = txtuser.Text;
                ob.password = txtpass.Text;
                GymLoginInfoService objService = new GymLoginInfoService();
                string information = objService.GymLogin(ob);
                string[] info = information.Split(';');
                string URL = string.Empty;
                if (!string.IsNullOrEmpty(information))
                {
                        Session["GymId"] = info[0].ToString();
                        Session["GymName"] = info[1].ToString();
                        //Session["GymEmail"] = info[2].ToString();
                        Session.Timeout = 60;
                        URL = "~/GymDetail.aspx";
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



        }
    }
