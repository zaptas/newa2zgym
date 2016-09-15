using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommonUtility;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using DTO;
using BLL;
using CommonUtility;

namespace A2ZGymSolution
{
    public partial class gymregister : System.Web.UI.Page
    {
        Utility util = new Utility();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindstates();
            }
         
        }

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        SqlCommand com;

        public void bindstates()
        {
            DataTable allstates = util.getAllStates();
            if (allstates.Rows.Count > 0)
            {
                ddlstate.DataTextField = "statename";
                ddlstate.DataValueField = "statename";
                ddlstate.DataSource = allstates;
                ddlstate.DataBind();
                ddlstate.Items.Insert(0, "Select State");
            }

        }

        public void bindcity(string statename)
        {
            DataTable allstates = util.getAllCity(statename);
            if (allstates.Rows.Count > 0)
            {
                ddlcity.DataTextField = "cityname";
                ddlcity.DataValueField = "cityname";
                ddlcity.DataSource = allstates;
                ddlcity.DataBind();
                ddlcity.Items.Insert(0, "Select City");
            }

        }
        string gymid = "";
        public string generateUniqueid(string Uniqueid)
        {
           
            string   gymname = txtgymname.Value;
            string lastvalue = "";
            string currentvalue = "";
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
            string MethodName="RegisterClient";
            string erroCode = "GYM1001";
            string date = DateTime.Now.ToShortDateString();
            string trackerId = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 10);

            // getting last registered GYM Id - numeric
            string qry = "select top 1 gymid from gymregistration order by sno desc";
            SqlDataAdapter adapter = new SqlDataAdapter(qry,connection);
            DataTable dtGymId = new DataTable();
            adapter.Fill(dtGymId);
            if (dtGymId.Rows.Count > 0)
            {
                string id = dtGymId.Rows[0][0].ToString();
                char[] arr = id.ToCharArray();
                Array.Reverse(arr);
                lastvalue = arr[3].ToString() + arr[2].ToString() + arr[1].ToString() + arr[0].ToString();
                currentvalue = (Convert.ToInt32(lastvalue) + 1).ToString();
                gymid = gymname.ToUpper() + "_" + currentvalue;
            }
            else
            {
                gymid = gymname.ToUpper() + "_" + "1000";
          
            
             }
            return gymid;

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            generateUniqueid(gymid);
         try
            {
                GymRegistrationInfo ob = new GymRegistrationInfo();
                ob.gymid = gymid;
                ob.gymname = this.txtgymname.Value;
                ob.email = this.txtemail.Value;
                ob.address = this.txtaddress.Value;
                ob.state = this.ddlstate.Text;
                ob.city = this.ddlcity.Text;
                ob.pincode = this.txtpincode.Value;
                ob.mobile = this.txtmobile.Value;
                ob.password = this.txtpassword.Value;
                bool validateData = new GymRegistrationInfoService().registergym(ob);
            }

            catch
            {
            }
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            string state = ddlstate.Text;
            bindcity(state);
        }
      }
   }
 



   
