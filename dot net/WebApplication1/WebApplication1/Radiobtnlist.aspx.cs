using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Radiobtnlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Dictionary<string, string> gender = new Dictionary<string, string>
            {
                { "Male","1"},
                { "female","2"},                                                                                    
                {"others","3 "}
            };
                foreach (var item1 in gender)
                {
                    RadioButtonList2.Items.Add(new ListItem(item1.Key, item1.Value));
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = RadioButtonList1.SelectedItem.Text;

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Label3.Text = RadioButtonList2.SelectedItem.Text;
        }
    }
}