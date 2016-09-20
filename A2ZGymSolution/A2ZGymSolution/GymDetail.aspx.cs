using BLL;
using CommonUtility;
using DTO;
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
    public partial class GymProfile : System.Web.UI.Page
    {
        Utility util = new Utility();
        string gymId = string.Empty;
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
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

           try
             {
               SqlCommand cmd = new SqlCommand("select website ,twitter ,facebook ,instagram from gymregistration where gymid='" + gymId + "'", connection);
               connection.Open();
               SqlDataAdapter da = new SqlDataAdapter(cmd);
               DataTable dt = new DataTable();
               da.Fill(dt);
               connection.Close();

               if (dt.Rows.Count > 0)
               {
                  
              //picpath. = dt.Rows[0][0].ToString();
              //coverimg.PostedFile = dt.Rows[0][1].ToString();
              //galleryimage = dt.Rows[0][2].ToString();
              txtfacebook.Value = dt.Rows[0][3].ToString();
              txtwebsite.Value  =   dt.Rows[0][4].ToString();
              txttwitter.Value  =   dt.Rows[0][5].ToString();
              txtinstagram.Value =  dt.Rows[0][6].ToString();
          
                  
               }
               else
               {
                   Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('please check input id')</script>");
               }

           }
           catch
           {
               Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('please check ')</script>");
           }  
        }
   
        string picpath = "";
        public string returnlogo()
        {
            if (companylogo.HasFile)
            {

                if (companylogo.FileName.Contains(".jpg"))
                {

                    companylogo.SaveAs(Server.MapPath("/gymlogo/" + companylogo.FileName));

                    picpath = "gymlogo/" + companylogo.FileName;
                 
                }
            }
            return picpath;
        }

        string covimg = "";
        public string returncover()
        {

          if (coverimg.HasFile)
            {

                if (coverimg.FileName.Contains(".jpg"))
                {
                   
                    coverimg.SaveAs(Server.MapPath("/gymlogo/" + coverimg.FileName));

                    covimg = "gymlogo/" + coverimg.FileName;

                }
            }
            return covimg;
        }

        string galimg = "";
        public string returngal()
        {
            if (galleryimg.HasFile)
            {

                if (galleryimg.FileName.Contains(".jpg"))
                {

                    galleryimg.SaveAs(Server.MapPath("/gymlogo/" + galleryimg.FileName));

                    galimg = "gymlogo/" + galleryimg.FileName;

                }
            }
            return galimg;
        }

        protected void btnsave_Click(object sender, EventArgs e) 
        {
           returnlogo();
           returncover();
           returngal();
           GymAddDetailInfo ob = new GymAddDetailInfo();
           ob.companylogo = picpath.ToString();
           ob.coverimage = covimg.ToString();
           ob.galleryimage = galimg.ToString();
           ob.facebook = this.txtfacebook.Value ;
           ob.website = this.txtwebsite.Value;
           ob.twitter = this.txttwitter.Value;
           ob.instagram = this.txtinstagram.Value;
           ob.gymId = gymId;
           bool validateData = new GymAddDetailInfoService().addInfo(ob);

        }
 
   }

}




