using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace polymorphism
{
    internal class polys
    {
        public void calc()
        {
            Console.WriteLine("CALLING  the first calc function");
        }
        public void calc(string a) { Console.WriteLine("the value of a " + a); }

        public bool calc(int b)
        {
            Console.WriteLine("enter a number");
            b = Convert.ToInt32(Console.ReadLine());
            if (b > 0)
            {
                return true;
            }
            else { return false; }
        }

        public int calc(int a,int b)
        {
           
            int sum = a + b;
            return sum;
        }

        static void Main(string[] args)
        {
            polys pobject = new polys();
            pobject.calc();

            Console.WriteLine("enter name");
            string s = Console.ReadLine();
            pobject.calc(s);

            Console.WriteLine("Enter a number");
            int x = Convert.ToInt32(Console.ReadLine());
            bool c;
           c= pobject.calc(x);
            Console.WriteLine("its " + c);

            Console.WriteLine("sum  calculator");

            pobject.calc(3, 4);

           int f= pobject.calc(Convert.ToInt32(Console.ReadLine()), Convert.ToInt32(Console.ReadLine()));

            Console.WriteLine(f);
        }

    }
     
    } 
