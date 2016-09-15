using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DTO;

namespace DAL
{
    public class GymActivityManager
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        public DataTable avtivitylist()
        {
            SqlCommand cmd = new SqlCommand(" select activity_name from m_gymactivity" , con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = null;  
            if (dr.HasRows)
            {
                dt = new DataTable();
                dt.Load(dr);
                return dt;
            }
            else
            {
                cmd.Dispose();
                cmd = null;
            }
            return dt;
        }
        public int insertActivity(GymActivityInfo ob)
        {
            string insActivity = "Insert into [gym_activity] (gymid, gym_activity, creation_date ) values (@gymid, @gym_activity, @creation_date)";
            con.Open();
            SqlCommand insertActivity = new SqlCommand(insActivity, con);
            insertActivity.Parameters.AddWithValue("@gymid", ob.gymid);
            insertActivity.Parameters.AddWithValue("@gym_activity", ob.activity);
            insertActivity.Parameters.AddWithValue("@creation_date", ob.creationdate);
            int result = insertActivity.ExecuteNonQuery();
            con.Close();
            return result;
        }
    }
}
