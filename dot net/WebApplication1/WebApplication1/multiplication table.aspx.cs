using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class multiplication_table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int number = Convert.ToInt32(TextBox1.Text);
            int range=Convert.ToInt32(TextBox2.Text);

            for(int i = 0; i <= range; i++)
            {
                Label4.Text += $"{i} * {number} =  {i*number}<br/>";
            }
        }
    }
}