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
    public class GymRegistrationManager
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);

        public bool gymreg(GymRegistrationInfo ob)
      {
          try
          {
          connection.Open();
          SqlCommand cmd = new SqlCommand("gymregister", connection);
          cmd.CommandType = CommandType.StoredProcedure;
          cmd.Parameters.AddWithValue("@gymid",ob.gymid);
          cmd.Parameters.AddWithValue("@gymname",ob.gymname);
          cmd.Parameters.AddWithValue("@email" ,ob.email);
          cmd.Parameters.AddWithValue("@address" ,ob.address);
          cmd.Parameters.AddWithValue("@state" ,ob.state);
          cmd.Parameters.AddWithValue("@city",ob.city);
          cmd.Parameters.AddWithValue("@pincode" ,ob.pincode);
          cmd.Parameters.AddWithValue("@mobile",ob.mobile);
          cmd.Parameters.AddWithValue("@gymcreationdate", DateTime.Today.Date.ToString());
          cmd.Parameters.AddWithValue("@gymupdationdate", DateTime.Today.Date.ToString());
          cmd.ExecuteNonQuery();
          cmd.Dispose();
          connection.Close();


         connection.Open();
         SqlCommand command = new SqlCommand("gymlogindetail", connection);
         command.CommandType = CommandType.StoredProcedure;
         command.Parameters.AddWithValue("gymid" ,ob.gymid);
         command.Parameters.AddWithValue("password",ob.password);
         command.Parameters.AddWithValue("gymcreatdate", DateTime.Today.Date.ToString());
         command.Parameters.AddWithValue("gymupdatedate", DateTime.Today.Date.ToString());
         command.ExecuteNonQuery();
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
