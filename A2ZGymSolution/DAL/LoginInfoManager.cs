﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace DAL

{
 public   class LoginInfoManager
    {
     public string ValidateLogin(LoginInfo ob)
     {
         string information = string.Empty;
         string UserId = string.Empty;
         string UserName = string.Empty;
         string Picpath = string.Empty;
         string UserEmail = string.Empty;


         SqlCommand sqlCommand = new SqlCommand();
         SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
         try
         {
             connection.Open();
             sqlCommand = new SqlCommand("[gym].[procmemberlogin]", connection);
             sqlCommand.CommandType = CommandType.StoredProcedure;
             sqlCommand.Parameters.AddWithValue("@userid", ob.username);
             sqlCommand.Parameters.AddWithValue("@password", ob.password);
             SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

             if (sqlDataReader.HasRows)
             {
                 while (sqlDataReader.Read())
                 {
                     UserId = sqlDataReader.GetValue(0).ToString();
                     UserName = sqlDataReader.GetValue(1).ToString();
                     Picpath = sqlDataReader.GetValue(2).ToString();
                     UserEmail = sqlDataReader.GetValue(3).ToString();

                 }

                 information = UserId + ";" + UserName+";"+Picpath + ";" + UserEmail;

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
