using BLL;
using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A2ZGymSolution
{
    public partial class GymActivity : System.Web.UI.Page
    {
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
              bindActivityList();
          }
        }

        public void bindActivityList()
        {
            GymActivityInfoService obj = new GymActivityInfoService();
            DataTable dt = obj.getActivityList();
            ChkList_Activity.DataSource = dt;
            ChkList_Activity.DataBind();
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in ChkList_Activity.Items)
            {
                if (item.Selected==true)
                {
                    GymActivityInfo obj = new GymActivityInfo();
                    obj.gymid = gymId;
                    obj.activity = item.Value;
                    obj.creationdate = System.DateTime.Now.ToString();
                    GymActivityInfoService ob = new GymActivityInfoService();
                    ob.getInsertActivity(obj);
                    lblactivity.Text = "Aactivities save Successfully";
                }
            }
        }




    }
}