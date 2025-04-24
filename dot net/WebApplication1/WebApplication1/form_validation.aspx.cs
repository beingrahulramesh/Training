using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class form_validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                Label2.Text = "Please enter your name";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label2.Text = "";
            }

            if (DropDownList1.SelectedItem.Value == "-1")
            {

                Label4.Text = "select qualification";
                Label4.ForeColor = System.Drawing.Color.Red;

            }
            else
            {
                Label4.Text = "";
            }
            if (DropDownList2.SelectedItem.Value == "-1")
            {
                Label10.Text = "select district";
                Label10.ForeColor = System.Drawing.Color.Red;


            }

            if (!RadioButton1.Checked && !RadioButton2.Checked && !RadioButton3.Checked)
            {
                Label9.Text = "Select gender";
                Label9.ForeColor = System.Drawing.Color.Red;


            }
            else
            {
                Label9.Text = "";
            }

            if (CheckBox4.Checked)
            {
                Label8.Text = "Confirm your data";
                Label8.ForeColor = System.Drawing.Color.Red;

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            Label4.Text = "";
                Label9.Text = "";
                Label10.Text = "";
            Label8.Text = "";
            TextBox1.Text = "";
            DropDownList1.SelectedItem.Value = "-1";
            TextBox2.Text = "";
            DropDownList2.SelectedItem.Value = "-1";
        }
    }
}