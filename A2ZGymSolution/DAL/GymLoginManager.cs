using DTO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
 public  class GymLoginManager
    {

     public string Validatelogin(GymLoginInfo ob)
     {
         string information = string.Empty;
         string GymId = string.Empty;
         string GymName = string.Empty;
    
         //string MemberId = string.Empty;
         //string MemberName = string.Empty;


         SqlCommand sqlCommand = new SqlCommand();
         SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
         try
         {
             connection.Open();
             sqlCommand = new SqlCommand("procclientlogin", connection);
             sqlCommand.CommandType = CommandType.StoredProcedure;
             sqlCommand.Parameters.AddWithValue("@gymid", ob.username);
             sqlCommand.Parameters.AddWithValue("@password", ob.password);
             SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

             if (sqlDataReader.HasRows)
             {
                 while (sqlDataReader.Read())
                 {
                     GymId = sqlDataReader.GetValue(0).ToString();
                     GymName = sqlDataReader.GetValue(1).ToString();


                 }

                 information = GymId + ";" + GymName;

             }
         }

         catch
         {
             information = "";
         }
         finally
         {
             connection.Close();
         }
         return information;
        }
    }
}
