using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;


namespace CommonUtility
{
    public class Utility
    {
        DataTable record = new DataTable();
        SqlCommand command;
        SqlDataAdapter adapter = new SqlDataAdapter();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        public void logError(string date, string erroCode, string trackerId, string description)
        {

        }

        public DataTable getMemberDetails(string memberId)
        {
            command = new SqlCommand("procgetspecificmemberdetails", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@memberId", memberId);
            adapter.SelectCommand = command;
            adapter.Fill(record);
            return record;
        }



        public DataTable getClientDetails(string gymId)
        {
            command = new SqlCommand("procgetspecificclientdetails", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@gymid", gymId);
            adapter.SelectCommand = command;
            adapter.Fill(record);
            return record;
        }


        public bool updateDiet(string memberid, string procedurename, string diettype , string food)
        {
            try
            {
                connection.Open();
                command = new SqlCommand(procedurename, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@memberid", memberid);
                command.Parameters.AddWithValue("@" + diettype, food);
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


        public bool saveGymPics(string date, string gymId, string picPath)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("procuploadgympics", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@date", date);
                command.Parameters.AddWithValue("@gymId", gymId);
                command.Parameters.AddWithValue("@picPath", picPath);
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

        public DataTable bindMembergrid(string gymId)
        {
            try
            {
                command = new SqlCommand("procgetmemberdetails", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@gymId", gymId);
                adapter.SelectCommand = command;
                adapter.Fill(record);
                return record;  
            }
            catch
            {
                
            }
            finally
            {
                connection.Close();
            }
            return record;        
        }



        public DataTable bindgympicsdatalistgrid(string gymId)
        {
            try
            {
                command = new SqlCommand("procgetgympics", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@gymId", gymId);
                adapter.SelectCommand = command;
                adapter.Fill(record);
                return record;  
            }
            catch
            {
                
            }
            finally
            {
                connection.Close();
            }
            return record;        
        }


        public DataTable getAllfood(string memberid)
        {
            DataTable breakfastlist = new DataTable();
            command = new SqlCommand("procgetfooddiet", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@memberid", memberid);
            adapter.SelectCommand = command;
            adapter.Fill(breakfastlist);
            return breakfastlist; 
        }


        // Method to get all the email ids of a specific GYM
        public DataTable getAllEmailsOfGym(string gymId)
        {
            DataTable emails = new DataTable();
            try
            {
                command = new SqlCommand("procgetallemailsofgym", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@gymId", gymId);
                adapter.SelectCommand = command;
                adapter.Fill(emails);
                return emails;
            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }
            return emails; 
        
        }

        public DataTable getAllEmailOfGym(string gymId)
        {
            DataTable email = new DataTable();
            try
            {
                command = new SqlCommand("progetemailofgym", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@gymId", gymId);
                adapter.SelectCommand = command;
                adapter.Fill(email);
                return email;
            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }
            return email;

        }




        // method to update the membership plan for a gym
        public bool updateMembershipPlanCharge(string gymid, string procedurename, string monthly, string quaterly, string halfyerly, string yearly)
        {
            try
            {
                connection.Open();
                command = new SqlCommand(procedurename, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@gymid", gymid);
                command.Parameters.AddWithValue("@monthly", monthly);
                command.Parameters.AddWithValue("@quaterly", quaterly);
                command.Parameters.AddWithValue("@halfyerly", halfyerly);
                command.Parameters.AddWithValue("@yearly", yearly);                
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




        // method to get current membership plan
        public DataTable getMembershipPlanDetails(string gymid, string procedurename)
        {
            DataTable plan = new DataTable();
            try
            {
                command = new SqlCommand(procedurename, connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@gymid", gymid);
                adapter.SelectCommand = command;
                adapter.Fill(plan);
                return plan;
            }
            catch
            {
                

            }
            finally
            {
                connection.Close();
            }
            return plan;
        }




        public DataTable getAllStates()
        {
            try
            {
                adapter = new SqlDataAdapter("procgetstates", connection);                
                adapter.Fill(record);
                return record;
            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }
            return record;
        }


        public DataTable getAllCity(string state)
        {
            try
            {                
                command = new SqlCommand("procgetcity", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@state", state);
                adapter.SelectCommand = command;
                adapter.Fill(record);
                return record;
            }
            catch
            {

            }
            finally
            {
                connection.Close();
            }
            return record;
        }

        public DataTable getPlan(string gymId)
        {
            DataTable plandetail = new DataTable();
            string amount = string.Empty;
            try
            {
                command = new SqlCommand("procgetmembershipplanamout", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@gymId", gymId);
                adapter.SelectCommand = command;
                adapter.Fill(plandetail);
                
            }
            catch
            {
                
            }
            finally
            {
                
            }
            return plandetail;
        }

        public string getGymName(String gymId)
        {
            DataTable dt = new DataTable();
            string logo = "";
            try
            {
                command = new SqlCommand("proselectlogo", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@gymId", gymId);
                adapter.SelectCommand = command;
                adapter.Fill(dt);
                logo = dt.Rows[0][0].ToString();


            }
            catch
            {
            }
            finally
            {
            }
            return logo ;
        }    
    }
}
