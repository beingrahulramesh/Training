using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace methodoverriding
{
    internal abstract class Shapes
    {
        public abstract void areas();

        public void showdata() { System.Console.WriteLine("show function"); }
    }

    class Circles : Shapes
    {
        public override void areas()
        {
            int r;
            const Double  pi = 3.14;

        }
    }

    internal class Abracts
    {
        static void Main(string[] args)
        {
            Circles c = new Circles();

            c.areas();
            c.showdata();

        }
    }
}
