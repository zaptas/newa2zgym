using System;
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
 public   class GymScheduleManager
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);

        public int insGymSchedule(GymScheduleInfo ob)
        {
            con.Open();
            SqlCommand insertAccount = new SqlCommand("gymsch", con);
            insertAccount.CommandType = CommandType.StoredProcedure;
            insertAccount.Parameters.AddWithValue("@gymid", ob.gymid);
            insertAccount.Parameters.AddWithValue("@activitydate", ob.activitydate);
            insertAccount.Parameters.AddWithValue("@timefrom", ob.timefrom);
            insertAccount.Parameters.AddWithValue("@timeto", ob.timeto);
            insertAccount.Parameters.AddWithValue("@activityname", ob.activityname);
            insertAccount.Parameters.AddWithValue("@creationdate", ob.creationdate);
            int result = insertAccount.ExecuteNonQuery();
            con.Close();
            return result;


        }

    }
}
