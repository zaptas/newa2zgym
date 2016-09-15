using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAL;
namespace BLL
{
    public class UserRegistrationinfoService
    {
        public string userRegister(UserregistrationInfo ob)
        {
            
            return new UserregistrationManager().UserRegister(ob);
        }
    }
}
