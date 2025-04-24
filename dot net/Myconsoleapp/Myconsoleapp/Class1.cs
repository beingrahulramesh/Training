using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Myconsoleapp
{
    
    internal class Class1
    {
        int a;
        int b;
        int c;
        public Class1()
        {
            a = 10;
            b = 20;
        }

        public void add_values(int a, int b)
        {
            c = a + b;
            Console.WriteLine("the sum is " + c);
            
        }
    }
}
