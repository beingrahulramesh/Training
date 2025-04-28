using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace database_connection
{
    public partial class gridview1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();//dbconnection = class name which used to create connection :dbconnection.cs
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from Student";
             SqlDataReader  dr = db.Getresult(cmd);
            GridView2.DataSource = dr;
            GridView2.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}