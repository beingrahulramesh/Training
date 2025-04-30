using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace registration
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            service service = new service();    
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO [User] VALUES(@Id,@Username,@Password,@Designation)";
            string designation=DropDownList1.SelectedItem.ToString();
            if (!String.IsNullOrEmpty(designation)){
                cmd.Parameters.AddWithValue("@Designation", designation);
            }
            cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(TextBox3.Text));
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password",TextBox2.Text);

            service.ExecuteQuery(cmd);
            //checkbox list items to string and add to db.but this table is table subject.
            String selectedDesignation = " ";

            foreach(ListItem item2 in CheckBoxList1.Items)
            {
                if (item2.Selected)
                {
                    selectedDesignation += item2.Value + ",";
                }
            }

           SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "insert into [Subject] values(@Id,@Subject,@Trainer_RK);";
            cmd2.Parameters.AddWithValue("@Id", selectedDesignation); // Or use identity if DB handles it
            cmd2.Parameters.AddWithValue("@Subject", selectedDesignation);
            cmd2.Parameters.AddWithValue("@Trainer_RK", Convert.ToInt32(TextBox3.Text)); // FK reference to User.Id
            service.ExecuteQuery(cmd2);

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Data saved successfully!');", true);


        }
    }
}