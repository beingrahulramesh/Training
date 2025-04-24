using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class questionair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            RadioButtonList1.SelectedIndex=-1;
            RadioButtonList2.SelectedIndex = -1;
            RadioButtonList3.SelectedIndex = -1;
            RadioButtonList4.SelectedIndex = -1;
            RadioButtonList5.SelectedIndex = -1;
            Label6.Text = " ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int result = 0;
            if (RadioButtonList1.SelectedItem != null)
            {
                if (RadioButtonList1.SelectedItem.Text == "Canberra.")
                {
                    result += 2;
                }
                else
                {
                    result -= 2; // Deduct points if the answer is incorrect
                }
            }
            else
            {
                result -= 0; // Deduct points if no selection is made
            }
            // Check RadioButtonList2
            if (RadioButtonList2.SelectedItem != null)
            {
                if (RadioButtonList2.SelectedItem.Value == "George Washington")
                {
                    result += 2;
                }
                else
                {
                    result -= 2; 
                }
            }
            else
            {
                result -= 0; 
            }
            if (RadioButtonList3.SelectedItem != null)
            {
                if (RadioButtonList3.SelectedItem.Value == "Au")
                {
                    result += 2;
                }
                else
                {
                    result -= 2; 
                }
            }
            else
            {
                result -= 0; 
            }


            if (RadioButtonList4.SelectedItem != null)
            {
                if (RadioButtonList4.SelectedItem.Value == "William Shakespeare")
                {
                    result += 2;
                }
                else
                {
                    result -= 2; 
                }
            }
            else
            {
                result -= 0; 
            }

            // Check RadioButtonList5
            if (RadioButtonList5.SelectedItem != null)
            {
                if (RadioButtonList5.SelectedItem.Value == "basketball")
                {
                    result += 2;
                }
                else
                {
                    result -= 2; 
                }
            }
            else
            {
                result -= 0; 
            }

            Label6.Text = $"Your Result is = {result.ToString()}";
        }
    }
}