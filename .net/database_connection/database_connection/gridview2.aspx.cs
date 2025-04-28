using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace database_connection
{
    public partial class gridview2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from Employee";
            SqlDataReader dr = db.Getresult(cmd);
            GridView1.DataSource = dr;
            GridView1.DataBind();


        }
    }
}