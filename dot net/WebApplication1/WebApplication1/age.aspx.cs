using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class age : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int age = int.Parse(TextBox1.Text);
            if (age >= 18)
            {
                result.Text = " age " +age +" is Major";
            }
            else
            {
                result.Text = " age " + age + "Minor";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = TextBox3.Text;
            int marks = int.Parse(TextBox2.Text);
            if (marks >= 24)
            {
                Label3.Text = $"{name} have passed with {marks} marks";
                Label3.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label3.Text = $"{name} have not passed with {marks}";
                Label3.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}