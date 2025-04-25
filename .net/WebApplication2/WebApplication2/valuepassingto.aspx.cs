using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class valuepassingto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name1=Request.QueryString["n1"];
            string password1=Request.QueryString["n2"];

            Label1.Text = "welcome "+name1 +".and your password= "+password1;
        }
    }
}