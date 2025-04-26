using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class student4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Text = Session["name"].ToString();

            TextBox5.Text = Session["externalmarks"].ToString();
            TextBox4.Text = Session["internals"].ToString();
            TextBox6.Text= (int.Parse(TextBox5.Text)+int.Parse(TextBox4.Text)).ToString();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}