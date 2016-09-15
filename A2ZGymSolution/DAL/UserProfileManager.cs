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
 public class UserProfileManager
    {
      public string userupdate(UserProfileInfo ob)
        {
            string MethodName = "Userupdate";
            string validate = "";
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["gym"].ConnectionString);
            try
            {
                connection.Open();
                SqlCommand Command = new SqlCommand("updateprofile", connection);
                Command.CommandType = CommandType.StoredProcedure;
                Command.Parameters.AddWithValue("@userid", "ABABAB_EF3F8");
                Command.Parameters.AddWithValue("@userName", ob.userName);
                Command.Parameters.AddWithValue("@mobile", ob.mobile);
                Command.Parameters.AddWithValue("@Picpath", ob.Picpath);
                Command.Parameters.AddWithValue("@Gender", ob.Gender);
                Command.ExecuteNonQuery();
                Command.Dispose();
                connection.Close();
                //validate = userid;

            }
            catch (Exception ex)
            {
                string description = ex.Message.ToString();

                validate = "";
            }

            return validate;

        }




      public string useraddressupdate(UserProfileInfo ob)
        {
            string MethodName = "useraddressupdate";
            string validate = "";
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["gym"].ConnectionString);
            try
            {

                connection.Open();
                SqlCommand cmd = new SqlCommand("updateaddress", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userid", "ABABAB_EF3F8");
                cmd.Parameters.AddWithValue("@address1", ob.address1);
                cmd.Parameters.AddWithValue("@address2", ob.address2);
                cmd.Parameters.AddWithValue("@City", ob.City);
                cmd.Parameters.AddWithValue("@State", ob.State);
                cmd.Parameters.AddWithValue("@pincode", ob.pincode);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                string description = ex.Message.ToString();

                validate = "";
            }

            return validate;

        }




       public string updatepassword(UserProfileInfo ob)
        {
            string MethodName = "updatepassword";

            // string trackerId = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 10);

            //string date = DateTime.Now.ToShortDateString();
            //string uniqueValue = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 5).ToUpper();

            string validate = "";
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["gym"].ConnectionString);
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("updatepassword", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userid", "ABABAB_EF3F8");
                cmd.Parameters.AddWithValue("@password", ob.password);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                string description = ex.Message.ToString();

                validate = "";
            }
            return validate;
        }





    }
}
