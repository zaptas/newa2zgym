using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A2ZGymSolution
{
    public partial class userdashboard : System.Web.UI.Page
    {
        public string username = "";
        public string picpath = "";
        public string userid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == "")
            {
               
            }
            else
            {
                username = Session["UserName"].ToString();
                picpath = Session["pic"].ToString();
                userid = Session["UserId"].ToString();
            }
        }
    }
}