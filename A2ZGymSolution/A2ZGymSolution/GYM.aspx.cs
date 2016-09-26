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
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        SqlDataAdapter da;
        DataTable record = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            //string loc = this.Page.RouteData.Values["loc"].ToString();
            //bindGrid(loc);
        }

        public void bindGrid(string loc)
        {
            string getPicPath = "select * from gymregistration where city ='" + loc + "'";
            da = new SqlDataAdapter(getPicPath, connection);
            da.Fill(record);
            gymData.DataSource = record;
            gymData.DataBind();
        }
    }
}