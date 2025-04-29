using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileName= FileUpload1.FileName;
                string filePath= Server.MapPath("~/fileupload/"+fileName);
                FileUpload1.SaveAs(filePath);
                Label2.Text = "file uploaded successfully";
            }
            else
            {
                Label2.Text = "file not uploaded successfully";

            }
        }
    }
}