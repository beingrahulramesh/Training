using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class dropdownex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text= DropDownList1.Items[0].Text;
            TextBox1.Text= string.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox2.Text = DropDownList2.SelectedItem.Text;
            DropDownList2.SelectedIndex = 0;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox3.Text= DropDownList3.SelectedItem.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DropDownList4.Items.RemoveAt(DropDownList4.SelectedIndex);
        }
    }
}