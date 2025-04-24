using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Myconsoleapp
{
    internal class Class5
    {
        
static void Main(string[] args)

        {
            /*
            int sum = 0;
            Console.WriteLine("enter any 10 numbers");
                for(int i = 0; i <= 10; i++)
            {
                sum += Convert.ToInt32( Console.ReadLine());
            }
            Console.WriteLine(sum); */


            int even = 0;
            int odd = 0;
            Console.WriteLine("ENter 10 numbers");
            int accept=0;
            for (int i = 0; i <= 10; i++)
            {
                accept = Convert.ToInt32(Console.ReadLine());
                if (accept % 2 == 0)
                {
                    even++;
                }
                else
                {
                    odd++;
                }
            }
            Console.WriteLine(even);
            Console.WriteLine(odd);

        }
    }
}
