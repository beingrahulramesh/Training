using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class dropdown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Dictionary<string, string> employee = new Dictionary<string, string>
            {
                {"123","appu" },
                {"456","kuttu" },
                {"654","thakku" }

            };

            foreach(var item1 in employee)
            {
                ddlemployee.Items.Add(new ListItem(item1.Value, item1.Key));
            }

        }

        protected void ddlemployee_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(int.Parse(ddlemployee.SelectedItem.Value)==-1)
            {
                Label2.Text = "Not selected any items";
            }
            else
            {
                Label2.Text = "Selected Emp_name is a" + ddlemployee.SelectedItem.Text + "<br> His Emp code is : " + ddlemployee.SelectedItem.Value;
            }
        }
    }
}