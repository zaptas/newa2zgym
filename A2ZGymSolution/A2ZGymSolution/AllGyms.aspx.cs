using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A2ZGymSolution
{
    public partial class AllGyms : System.Web.UI.Page
    {
       SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        SqlDataAdapter da;
        SqlDataAdapter da1;
        DataTable record = new DataTable();
        DataTable dt = new DataTable();
        public string gymname = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            bindGrid(); 
        }

        public void bindGrid()
        {
            string getPicPath = "select * from gymregistration";
            da = new SqlDataAdapter(getPicPath, connection);
            da.Fill(record);
            gymData.DataSource = record;
            gymData.DataBind();
        }

       protected void btnsearch_Click(object sender, EventArgs e)
        {
            string city = txtdata.Value;
            string getPicPath = "select gymid ,gymname , companylogo from gymregistration where city='"+city+"'";
            da1 = new SqlDataAdapter(getPicPath, connection);
            da1.Fill(dt);
            gymData.DataSource = dt;
            gymData.DataBind();
        }   
     }
  }
