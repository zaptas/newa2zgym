using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace BLL
{
  public  class GymRegistrationInfoService
    {
      public bool registergym(GymRegistrationInfo ob)
      {
          return new GymRegistrationManager().gymreg(ob);
      }    
  }
}
