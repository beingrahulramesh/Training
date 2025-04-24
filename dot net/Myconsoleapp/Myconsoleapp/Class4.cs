using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Myconsoleapp
{
    internal class Class4
    {
        static void Main(string[] args)
        {
            int n = 0;
            /* do
             {
                 Console.WriteLine(n);
                 n++;
             } while (n <= 10); */

            while (n <= 10)
            {
                Console.WriteLine(n);
                n++;
            }

            for( int i=10; i >= 1; i--)
            {
                Console.WriteLine(i);
            }
        }
    }
}
