using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace BLL
{
public  class GymLoginInfoService
    {
        public string GymLogin(GymLoginInfo ob)
        {
            return new GymLoginManager().Validatelogin(ob);
        }

    }
}
