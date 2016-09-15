
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Data;
using System.Diagnostics;

using System.Data.SqlClient;
using System.Configuration;

namespace CommonUtility
{
    public class PrintReciept
    {
        Utility util = new Utility();
        SqlDataAdapter adapter = new SqlDataAdapter();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GYM"].ConnectionString);
        SqlCommand command;
        public string generateReciept(string gymid)
        {
            string all="";
            try
            {

                DataTable record = util.getClientDetails(gymid);
                if (record.Rows.Count > 0)
                {
                    // setting details
                    string gymname = record.Rows[0]["gymname"].ToString();
                    string address = record.Rows[0]["address"].ToString();
                    string email = record.Rows[0]["email"].ToString();
                    string state = record.Rows[0]["state"].ToString();
                    string city = record.Rows[0]["city"].ToString();
                    string pincode = record.Rows[0]["pincode"].ToString();
                    string landline = record.Rows[0]["landline"].ToString();
                    string mobile = record.Rows[0]["mobile"].ToString();

                    all = gymname + "," + address + "," + state + "," + city + "," + pincode + "," + email + "," + landline + "," + mobile;

                }
                else
                {
                    all = "";
                }
            }
            catch
            {
                all = "";
            }

            return all;           

        }

    }
}
