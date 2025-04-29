using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class placeholder : System.Web.UI.Page
    {public Label newLabel= new Label();
        public TextBox newTextbox= new TextBox();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            newLabel.Text = "this is a dynamically added label";
            PlaceHolder1.Controls.Add(newLabel);
            newTextbox.Text = "this is a dynamically added textbox";
           PlaceHolder1.Controls.Add(newTextbox);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            PlaceHolder1.Controls.Remove(newLabel);
            PlaceHolder1.Controls.Remove(newTextbox);
        }
    }
}