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
    public partial class GymDescription : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("select description from gymregistration where gymid ='" + gymId + "'", connection);
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    txtEditor.Text = dt.Rows[0][0].ToString();

                }
            }
        }
             protected void btnSubmit_Click(object sender, EventArgs e)
           {
            connection.Open();
            SqlCommand cmd = new SqlCommand("update gymregistration set description =@description where gymid ='"+gymId+"'" ,connection);
            cmd.Parameters.AddWithValue("@description", txtEditor.Text);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            connection.Close();
          }


        }
    }
