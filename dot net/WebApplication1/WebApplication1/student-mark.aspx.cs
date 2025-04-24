using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class student_mark : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int chemistry = int.Parse(TextBox1.Text);
            int computerscience = int.Parse(TextBox2.Text);
            int english = int.Parse(TextBox3.Text);
            int physics = int.Parse(TextBox4.Text);

            int sum = chemistry + computerscience + english + physics;
            int average = sum / 4;

            result.Text = $" The sum is = {sum.ToString()} And the average is = {average.ToString()}";

           
        }
    }
}