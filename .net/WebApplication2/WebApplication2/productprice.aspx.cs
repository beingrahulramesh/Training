using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class productprice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedItem.Value == "laptop")
            {
                Panel2.Visible = true;
                TextBox1.Text = (60000).ToString();

            }else if (DropDownList1.SelectedItem.Value == "tablet")
            {
                Panel2.Visible = true;
                TextBox1.Text = (30000).ToString();

            } else if (DropDownList1.SelectedItem.Value == "smartphone")
            {
                Panel2.Visible = true;
                TextBox1.Text = (40000).ToString();

            } else if (DropDownList1.SelectedItem.Value == "drone")
            {
                Panel2.Visible = true;
                TextBox1.Text = (80000).ToString();

            }else if (DropDownList1.SelectedItem.Value == "-1")
            {

                Label5.Text = "please select a product";
                Label5.ForeColor = System.Drawing.Color.Red;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int cost= int.Parse(TextBox1.Text)*int.Parse(TextBox2.Text);
            Panel3.Visible = true;
            Panel2.Visible = true;
            TextBox3.Text = cost.ToString();
        }
    }
}