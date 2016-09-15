using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAL;

namespace BLL
{
 public  class GymAddDetailInfoService
    {
     public bool addInfo(GymAddDetailInfo ob)
     {
         return new GymAddDetailManager().updategym(ob);
     } 


    }
}
