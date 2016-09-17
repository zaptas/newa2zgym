using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A2ZGymSolution
{
    public partial class Admin : System.Web.UI.MasterPage
    {

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        string gymId = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["GymId"] != null && Session["GymId"].ToString() != "")
            {
                gymId = Session["GymId"].ToString();

            }
            else
            {
                Response.Redirect("~/login.aspx");

            }
               try
                   {
               SqlCommand cmd = new SqlCommand("select gymname from gymregistration where gymid='" + gymId + "'", connection);
               connection.Open();
               SqlDataAdapter da = new SqlDataAdapter(cmd);
               DataTable dt = new DataTable();
               da.Fill(dt);
               connection.Close();

               if (dt.Rows.Count > 0)
               {
                  
                lblgymName.Text = dt.Rows[0][0].ToString();
                  
               }
               else
               {
                   Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('please check input id')</script>");
               }

           }
           catch
           {
               Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('please check ')</script>");
           }  
 



            }


        }
    }
