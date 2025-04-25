using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class studentmarks1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Double sum = Convert.ToDouble(TextBox2.Text) + Convert.ToDouble(TextBox3.Text) + Convert.ToDouble(TextBox4.Text) + Convert.ToDouble(TextBox5.Text);
            Double average = sum / 4;
            string studentname=TextBox1.Text;

            Session["name"] = studentname;
            Session["sum1"] = sum;
            Session["average1"]= average;

            Response.Redirect("studentmarks2.aspx");
        }
    }
}