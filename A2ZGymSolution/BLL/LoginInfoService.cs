using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
 public   class LoginInfoService
    {
     public string loginUser(LoginInfo ob)
         {
             return new LoginInfoManager().ValidateLogin(ob);
         }
    }
}
