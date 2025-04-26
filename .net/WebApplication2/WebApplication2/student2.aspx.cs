using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class student2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = Session["name"].ToString();

           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int totalexternal=int.Parse(TextBox1.Text)+int.Parse(TextBox2.Text)+int.Parse(TextBox3.Text)+int.Parse(TextBox4.Text);
            Session["externalmarks"]=totalexternal;
            Response.Redirect("student3.aspx");
        }
    }
}