using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Myconsoleapp
{
    internal class Class3
    {
        public void checkValues()
        {
            int number;
            number=Convert.ToInt32(Console.ReadLine());
            if (number %2 == 0)
            {
                Console.WriteLine("this is a even number");
            }else
            {
                Console.WriteLine("this is a odd number");
            }
        }
        static void Main(string[] args)
        {
            Class3 obj=new Class3();
            obj.checkValues();
            
        }
    }
}
