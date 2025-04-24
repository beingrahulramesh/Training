using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class checkbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Dictionary<string, string> dictname = new Dictionary<string, string>
            {
                {"kuttu","kuttu" },
                { "appu","appu"},
                { "thakku","thakku"},
                { "pappu","pappu"}

            };
                foreach (var item1 in dictname)
                {
                    CheckBoxList1.Items.Add(new ListItem(item1.Value, item1.Key));
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String output = " ";
            if (CheckBox1.Checked)
            {
                output+="Optioin 1 selected ";
            }
            if (CheckBox2.Checked)
            {
                output += "Optioin 2 selected ";
            }
            if (CheckBox3.Checked)
            {
                output += "Optioin 3 selected ";
            }
            Label1.Text = output;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            List<String> selectedItems = new List<String>();

            foreach(ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    selectedItems.Add(item.Value+ " - "+ item.Text);
                }
            }
            Label2.Text = String.Join("<br>",selectedItems);
            Response.Write(string.Join("<br>", selectedItems));
        }
    }
}