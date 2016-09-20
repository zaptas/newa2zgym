using BLL;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A2ZGymSolution
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {

                ContactusInfo ob = new ContactusInfo();

                ob.@userName = txtName.Text;
                ob.@email = txtEmail.Text;
                ob.@mobile = txtMobile.Text;
                ob.@Subject = txtsubject.Value;



                string validate = new ContactusInfoService().UserQueryMail(ob);


            }

            catch
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Please Enter the Registered Mail Id')</script>");
            }
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('Email Send Successfully')</script>");
        }
          

    }
}