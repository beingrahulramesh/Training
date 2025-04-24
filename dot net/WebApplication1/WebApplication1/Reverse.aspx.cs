using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Reverse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int number = Convert.ToInt32(TextBox1.Text);
            int copy = number;
            int reverse = 0;

            while(copy > 0)
            {
                int digit = copy % 10;
                reverse += digit;
                copy /= 10;
            }
            if(number == reverse)
            {
                Label3.Text = $"{ reverse} - reverse and number are same ";

            }
            else
            {
                Label3.Text = $"{reverse} - reverse and number are not  same ";

            }
        }
    }
}