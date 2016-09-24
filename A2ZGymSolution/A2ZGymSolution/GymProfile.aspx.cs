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
    public partial class GymProfile1 : System.Web.UI.Page
    {
        public string gymname = "";
        public string gymlogo = "";
        public string gymcover = "";


        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        SqlDataAdapter da;
        DataTable record = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            //string name = this.Page.RouteData.Values["name"].ToString();

            //gymname = name.Replace("-", " ");

            //string getPicPath = "select * from gymregistration where gymname ='" + gymname + "'";
            //da = new SqlDataAdapter(getPicPath, connection);
            //da.Fill(record);
            //if (record.Rows.Count > 0)
            //{
            //    gymlogo = record.Rows[0]["companylogo"].ToString();
            //    gymcover = record.Rows[0]["coverimage"].ToString();
            //}
        }
    }
 }
