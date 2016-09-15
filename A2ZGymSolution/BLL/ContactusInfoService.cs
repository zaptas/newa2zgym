using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;

namespace BLL
{
   public class ContactusInfoService
    {
       public string UserQueryMail(ContactusInfo ob)
        {

            return new ContactusManager().UserQueryMail(ob);
        }
    }
}
