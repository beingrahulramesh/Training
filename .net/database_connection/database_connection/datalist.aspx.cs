using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace database_connection
{
    public partial class datalist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                BindData();
            }

        }
        protected void Button1_command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                int idTORemove = Convert.ToInt32(e.CommandArgument);
                dbconnection db = new dbconnection();
                SqlCommand cmd = new SqlCommand("DELETE from student where Id=@Id");
                cmd.Parameters.AddWithValue("@id", idTORemove);
                db.execute(cmd);
                BindData();
            }
        }
        public void BindData()
        {
            dbconnection db = new dbconnection();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from Student";
            SqlDataReader dr = db.Getresult(cmd);//calling function getresult from dbconnection class page
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

    }
}//CommandName="Remove"