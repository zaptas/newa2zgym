using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



namespace DAL
{
   public  class UserregistrationManager
    {
       public string UserRegister(UserregistrationInfo ob)
       {
           string MethodName = "UserRegister";

           string trackerId = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 10);

           string date = DateTime.Now.ToShortDateString();
           string uniqueValue = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 5).ToUpper();
           string userid = ob.userName.ToUpper() + "_" + uniqueValue;

           string validate = "";
           SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["gym"].ConnectionString);
           try
           {
               connection.Open();
               SqlCommand Command = new SqlCommand("reverseworkout", connection);
               Command.CommandType = CommandType.StoredProcedure;
               Command.Parameters.AddWithValue("@userid", userid);
               Command.Parameters.AddWithValue("@userName", ob.userName);
               Command.Parameters.AddWithValue("@email", ob.email);
               //Command.Parameters.AddWithValue("@address", ob.address);
               Command.Parameters.AddWithValue("@pincode", ob.pincode);
               Command.Parameters.AddWithValue("@mobile", ob.mobile);
               Command.Parameters.AddWithValue("@password", ob.password);
               Command.Parameters.AddWithValue("@agree", ob.agree);
               Command.ExecuteNonQuery();
               Command.Dispose();
               connection.Close();
               validate = userid;

               connection.Open();
               SqlCommand Cmd = new SqlCommand("userworkout", connection);
               Cmd.CommandType = CommandType.StoredProcedure;
               Cmd.Parameters.AddWithValue("@date", ob.date);
               Cmd.Parameters.AddWithValue("@userid", userid);
               Cmd.Parameters.AddWithValue("@userName", ob.userName);
               Cmd.Parameters.AddWithValue("@password", ob.password);
               Cmd.ExecuteNonQuery();
               Cmd.Dispose();
               connection.Close();
               validate = userid;

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

