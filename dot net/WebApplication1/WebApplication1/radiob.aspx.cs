using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class radiob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (rbt1.Checked)
            {
                Label1.Text = "you have selected " + rbt1.Text;
            } else if(RadioButton2.Checked){
                Label1.Text = "you have selected "+RadioButton2.Text;
            }
            else if(RadioButton3.Checked){
                Label1.Text = "you have entered " + RadioButton3.Text;

            }
            else
            {
                Label1.Text = "please select any value";
            }
        }
    }
}