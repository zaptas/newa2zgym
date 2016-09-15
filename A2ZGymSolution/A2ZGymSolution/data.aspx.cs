using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A2ZGymSolution
{
    public partial class data : System.Web.UI.Page
    {
        [WebMethod]
        public static List<string> GetAutoCompleteData(string username)
        {
            List<string> result = new List<string>();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select cityname, cityid from city where cityname LIKE '%'+@SearchText+'%'", con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@SearchText", username);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        result.Add(string.Format("{0}/{1}", dr["cityname"], dr["cityid"]));
                    }
                    return result;
                }
            }
        }



        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}