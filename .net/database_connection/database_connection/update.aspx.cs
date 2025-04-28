using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace database_connection
{
    public partial class update : System.Web.UI.Page
    {
        string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                a = Request.QueryString["Id"];
                dbconnection db = new dbconnection();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select * from Student where Id=@Id";
                cmd.Parameters.AddWithValue("@Id", a);
                SqlDataReader dr = db.Getresult(cmd);
                if (dr.Read())
                {
                    TextBox1.Text = dr.GetInt32(0).ToString();
                    TextBox2.Text = dr.GetString(1);
                    TextBox3.Text = dr.GetInt32(2).ToString();
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dbconnection db= new dbconnection();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update Student set name=@name,age=@age where Id=@Id;";
            cmd.Parameters.AddWithValue("@Id",TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@age", TextBox3.Text);
            db.execute(cmd);   
            Response.Redirect("datalist.aspx");       

        }
    }
}
//executenon