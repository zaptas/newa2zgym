using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DTO;
using System.Configuration;
using CommonUtility;

namespace DAL
{

    public class GymAddDetailManager
    {
        Utility util =new Utility();
        string gymId = string.Empty;
               

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        public bool updategym(GymAddDetailInfo ob)
        {

         try
            {
               
                connection.Open();
                SqlCommand cmd = new SqlCommand("[gym].[progymadditionalinfo]", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@gymid",ob.gymId);
                cmd.Parameters.AddWithValue("@companylogo",ob.companylogo);
                cmd.Parameters.AddWithValue("@coverimage", ob.coverimage);
                cmd.Parameters.AddWithValue("@galleryimage", ob.galleryimage);
                cmd.Parameters.AddWithValue("@website", ob.website);
                cmd.Parameters.AddWithValue("@twitter", ob.twitter);
                cmd.Parameters.AddWithValue("@facebook", ob.facebook);
                cmd.Parameters.AddWithValue("@instagram", ob.instagram);
                cmd.ExecuteNonQuery();
                return true;

            }
            catch
            {
                return false;
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
