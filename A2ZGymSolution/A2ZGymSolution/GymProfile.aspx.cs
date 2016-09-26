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
        SqlDataAdapter galleryda;
        DataTable record = new DataTable();
        DataTable gallerydt = new DataTable();
        string path = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
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

          
                bindGrid1();
          
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
            SqlCommand cmdgallery = new SqlCommand("select * from gymgallery where gymid ='"+ id +"'", connection);
            galleryda = new SqlDataAdapter(cmdgallery);
            galleryda.Fill(gallerydt);
            if (record.Rows.Count > 0)
            {
                path = gallerydt.Rows[0][1].ToString();

            }
            string[] newa = path.Split(',');

            gallerydt.Columns.Add("pic", typeof(string));

            foreach (var p in newa)
            {
                gallerydt.Rows.Add(p);
            }

            gymData.DataSource = gallerydt;
            gymData.DataBind();

        }
    }
 }
