using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class grade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox5.Text;
            int cs=int.Parse(TextBox1.Text);
            int chem=int.Parse(TextBox2.Text);
            int phy=int.Parse(TextBox3.Text);
            int hind=int.Parse(TextBox4.Text);

            int total=cs+chem+phy+hind;
            int average=total/4;
            string grade = "";
            if (total > 90)
            {
                grade = "A";

            }
            else if (total >= 80) { 
            grade="B";
            }else if(total >= 70) {  grade="C";}
            else if (total >= 60) {  grade="D";}
            else {grade="f";}
            Label6.Text = $@" name:{name}" +"<br>"+
                $"total-marks:{total}." + "<br>" +
                $" average :{average}." + "<br>" +
                $" grade:{grade}";
            Label6.ForeColor = System.Drawing.Color.GreenYellow;
        }
    }
}