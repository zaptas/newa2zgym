using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A2ZGymSolution
{
    public partial class GymGallery : System.Web.UI.Page
    {
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
        

       }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string path = "";
            SqlCommand cmd = new SqlCommand("select imgpath from gymgallery where gymid='" + gymId + "'", connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                path = dt.Rows[0][0].ToString();

                StringBuilder optname = new StringBuilder();
                optname.Append(path);
                foreach (var uploadedFile in coverimg.PostedFiles)
                {

                    string a = uploadedFile.FileName;

                    string opid = gymId + "_" + a;
                    //coverimg.PostedFiles[i].SaveAs(Server.MapPath("/Gallery/" + opid));

                    uploadedFile.SaveAs(Server.MapPath("/Gallery/" + opid));
                    if (optname.ToString() == "")
                    {
                        optname.Append(opid);

                    }
                    else
                    {
                        optname.Append(",").Append(opid);

                    }

                }
                connection.Open();
                SqlCommand cmdup = new SqlCommand("update gymgallery set imgpath = '"+optname+"' where gymid='"+gymId+"'  ", connection);
                cmdup.Parameters.AddWithValue("@gymid", gymId);
                cmdup.Parameters.AddWithValue("@imgpath", optname.ToString());
                cmdup.ExecuteNonQuery();
                connection.Close();
                }


            else 
            {
                StringBuilder optname = new StringBuilder();
                foreach (var uploadedFile in coverimg.PostedFiles)
                {

                    string a = uploadedFile.FileName;

                    string opid = gymId + "_" + a;
                    //coverimg.PostedFiles[i].SaveAs(Server.MapPath("/Gallery/" + opid));

                    uploadedFile.SaveAs(Server.MapPath("/Gallery/" + opid));
                    if (optname.ToString() == "")
                    {
                        optname.Append(opid);

                    }
                    else
                    {
                        optname.Append(",").Append(opid);

                    }

                }
                connection.Open();
                SqlCommand cmdu = new SqlCommand("insert into  gymgallery (gymid ,imgpath) values(@gymid ,@imgpath)", connection);
                cmdu.Parameters.AddWithValue("@gymid", gymId);
                cmdu.Parameters.AddWithValue("@imgpath", optname.ToString());
                cmdu.ExecuteNonQuery();
                connection.Close();
            
            }
            }

         }
      }
    
