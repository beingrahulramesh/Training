using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class BMI_calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int height_in_cm=int.Parse(TextBox1.Text);
            int weight=int.Parse(TextBox2.Text);
            double height = height_in_cm / 100.0;

            double bmi = weight / (height * height);

            TextBox3.Text=bmi.ToString();


        }
    }
}