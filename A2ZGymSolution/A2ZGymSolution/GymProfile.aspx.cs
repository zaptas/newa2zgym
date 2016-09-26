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
        public string address = "";
        public string pincode = "";
        public string facebook = "";
        public string twitter = "";
        public string instagram = "";


        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        SqlDataAdapter da;
        DataTable record = new DataTable();
        string path = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            string name = this.Page.RouteData.Values["name"].ToString();

            gymname = name.Replace("-", " ");

            string getPicPath = "select * from gymregistration where gymname ='" + gymname + "'";
            da = new SqlDataAdapter(getPicPath, connection);
            da.Fill(record);
            if (record.Rows.Count > 0)
            {
                gymlogo = record.Rows[0]["companylogo"].ToString();
                gymcover = record.Rows[0]["coverimage"].ToString();
                address = record.Rows[0]["address"].ToString();
                pincode = record.Rows[0]["pincode"].ToString();
                id = record.Rows[0]["gymid"].ToString();
                facebook = record.Rows[0]["facebook"].ToString();
                twitter = record.Rows[0]["twitter"].ToString();
                instagram = record.Rows[0]["instagram"].ToString();
            }

            bindGrid();
        }

        public void bindGrid()
        {

            string time = DateTime.Now.ToString("hh:mm:ss tt");

            string hour = time.Substring(0, 2);

            SqlCommand cmd = new SqlCommand("select activityname , timefrom , timeto FROM gymschedule WHERE timefrom  like '%11%'");
            cmd.Connection = connection;
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            DataTable dt = new DataTable();
            sda.Fill(dt);
            datagrid.DataSource = dt;
            datagrid.DataBind();

        }

        public void bindGrid1()
        {
            SqlCommand cmd = new SqlCommand("select * from gymgallery where gymid ='Akhada_1004'", connection);
            da = new SqlDataAdapter(cmd);
            da.Fill(record);
            if (record.Rows.Count > 0)
            {
                path = record.Rows[0][1].ToString();

            }
            string[] newa = path.Split(',');
            DataTable dt = new DataTable();
            dt.Columns.Add("pic", typeof(string));

            foreach (var p in newa)
            {
                dt.Rows.Add(p);
            }

            gymData.DataSource = dt;
            gymData.DataBind();

        }






    }
 }
