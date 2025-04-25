using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class studentmarks2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["name"].ToString();
            TextBox2.Text = Session["sum1"].ToString();
            TextBox3.Text = Session["average1"].ToString();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}