using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;
using DTO;

namespace BLL
{
    public class GymActivityInfoService
    {
        public DataTable getActivityList()
        {
            return new GymActivityManager().avtivitylist();
        }

        public int getInsertActivity(GymActivityInfo obj)
        {
            return new GymActivityManager().insertActivity(obj);
        }
    }
}
