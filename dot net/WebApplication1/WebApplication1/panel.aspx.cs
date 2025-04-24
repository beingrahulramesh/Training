using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int number = Convert.ToInt32(TextBox1.Text);
            int copy_of_number = number;

            int sum = 0;
            int digitcount = number.ToString().Length;

            while (number > 0)
            {
                int digit = number % 10;
                sum += (int)Math.Pow(digit, digitcount);
                number /= 10;
            }
            if (copy_of_number == sum)
            {
                Label2.Text = "this is an armstrong number";
                Label2.Style["color"] = "green";
            }
            else
            {
                Label2.Text = "this is not an armstrong number";
                Label2.Style["color"] = "red";
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int lower = Convert.ToInt32(TextBox2.Text);
            int upper = Convert.ToInt32(TextBox3.Text);


            for (int i = lower; i <= upper; i++)
            {
                int digitcount = i.ToString().Length;
                int sum = 0;
                int copy_of_number = i;

                while (copy_of_number > 0)
                {
                    int digit = copy_of_number % 10;
                    sum += (int)Math.Pow(digit, digitcount);
                    copy_of_number /= 10;
                }
                if (sum == i)
                {
                    Label5.Text += " - " + i;
                    Label5.Style["background-color"] = "blue";
                    Label5.Style["color"] = "white";
                    
                }
            }
        }
    }
}