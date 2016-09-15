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
    public partial class GymSchedule : System.Web.UI.Page
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


            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[4] { new DataColumn("Date"), new DataColumn("From"), new DataColumn("To"), new DataColumn("Activity") });
                ViewState["Schedule"] = dt;
                this.BindGrid();
            }

        }

        protected void BindGrid()
        {
            gvSchedule.DataSource = (DataTable)ViewState["Schedule"];
            gvSchedule.DataBind();

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)ViewState["Schedule"];
            dt.Rows.Add(datepicker.Value.Trim(), timepicker.Value.Trim(), timepicker1.Value.Trim(), txt_activity.Value.Trim());
            ViewState["Schedule"] = dt;
            this.BindGrid();
            timepicker.Value = string.Empty;

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < gvSchedule.Rows.Count; i++)
            {
                GymScheduleInfo obj = new GymScheduleInfo();
                obj.gymid = gymId;
                obj.activitydate = ((Label)gvSchedule.Rows[i].FindControl("lbldate")).Text;
                obj.timefrom = ((Label)gvSchedule.Rows[i].FindControl("lblfrom")).Text;
                obj.timeto = ((Label)gvSchedule.Rows[i].FindControl("lblto")).Text;
                obj.activityname = ((Label)gvSchedule.Rows[i].FindControl("lblActivity")).Text;
                obj.creationdate = DateTime.Today.Date.ToString();
                GymScheduleInfoService ob = new GymScheduleInfoService();
                ob.gymSchedule(obj);
            }
         }
        protected void gvPurchase_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void gvPurchase_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }



    }
}