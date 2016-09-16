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
    public partial class UserProfile : System.Web.UI.Page
    {

        string Gender = "";
        public string email = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            email = Session["UserEmail"].ToString();

        }



        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            UserProfileInfo ob = new UserProfileInfo();

            ob.userName = this.txtfirstName.Text;
            ob.mobile = this.txtMobile.Text;

           string uniqueValue = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 6).ToUpper();

            ob.Picpath = "~/Image/" + uniqueValue + "_" + flupic.FileName;
            ob.Gender=this.Gender;
            if (flupic.HasFile)
            {
                flupic.SaveAs(Server.MapPath("~/Image/" + uniqueValue + "_" + flupic.FileName));
            
            }
            string validate = new UserProfileInfoService().userupdate(ob);
         }
           
     
    


        protected void btnsaveaddress_Click(object sender, EventArgs e)
        {
            UserProfileInfo ob = new UserProfileInfo();
            ob.@address1 = this.txtaddress1.Text;
            ob.@address2 = this.txtaddress2.Text;
            ob.@City = this.txtcity.Text;
            ob.@State = this.txtstate.Text;
            ob.@pincode= this.txtPincode.Text;
            string validate = new UserProfileInfoService().useraddressupdate(ob);
         }

      


        protected void btnsubmitpswd_Click(object sender, EventArgs e)
        {
            UserProfileInfo ob = new UserProfileInfo();
           ob.@password = this.txtpassword.Text;
           string validate = new UserProfileInfoService().updatepassword(ob);
       }

        protected void rdbMale_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Male";

        }

        protected void rdbFemale_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "Female";
        }
    }
}