using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
 public  class UserProfileInfoService
    {
     public string userupdate(UserProfileInfo ob)
        {

            return new UserProfileManager().userupdate(ob);
        }

     public string useraddressupdate(UserProfileInfo ob)
        {

            return new UserProfileManager().useraddressupdate(ob);
        }

     public string updatepassword(UserProfileInfo ob)
        {

            return new UserProfileManager().updatepassword(ob);
        }
    }
}
