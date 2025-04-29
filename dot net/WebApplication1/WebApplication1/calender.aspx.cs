using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class calender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(Calendar1.SelectedDate + "<br>");
            string dattim = Calendar1.SelectedDate.ToString();
            string[] arr = dattim.Split(' ');
            Label1.Text = arr[0];
            Label2.Text = arr[1];

        }
    }
}