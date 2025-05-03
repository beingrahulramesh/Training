using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class EmployeeModel
    {
        public int Id { get; set; }//assuming id is of type int. the type of  get and set is auto defined
        public string Name { get; set; }
        public string Designation { get; set; }

        public string Department { get; set; }
    }
}
