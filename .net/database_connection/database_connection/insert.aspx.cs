using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace database_connection
{
    public partial class insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //classname db1 =
            dbconnection dbl= new dbconnection();

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "insert into Student values(@id_values,@name_values,@age_values)";
            
            cmd.Parameters.AddWithValue("@id_values", int.Parse(TextBox2.Text));

            //binding with database

            cmd.Parameters.AddWithValue("@name_values", (TextBox1.Text));


            cmd.Parameters.AddWithValue("@age_values", int.Parse(TextBox3.Text));

             
            dbl.execute(cmd);//to execute  




        }
    }
}