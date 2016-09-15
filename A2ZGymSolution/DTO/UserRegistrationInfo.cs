using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DTO
{
    public class UserregistrationInfo
    {
        public string userid { get; set; }
        public string userName { get; set; }
        public string password { get; set; }
        public string date { get; set; }
        public string email { get; set; }
       // public string address { get; set; }
        public string pincode { get; set; }
        public string mobile { get; set; }
        public string agree { get; set; }
       
    }
}
