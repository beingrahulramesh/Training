using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class dropdown2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "-1")
            {
                DropDownList2.Items.Clear();

                Label2.Text = "please select any state";
            }
            else if (DropDownList1.SelectedItem.Value == "kerala") { 
                DropDownList2.Items.Clear();
                Label2.Text = " ";
                DropDownList2.Items.Add(new ListItem("Select a district", "g"));
                Dictionary <string,string> state = new Dictionary<string, string>
                    {
                {"Thrissur","Thrissr" },
                {"Ernankulam","Ernankulam" },
                {"palakad","palskad" }

            };
                foreach (var item1 in state)
                {
                    DropDownList2.Items.Add(new ListItem(item1.Value, item1.Key));
                }

            }

            else if (DropDownList1.SelectedItem.Value == "tamil nadu") {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add(new ListItem("Select a district", "g"));

                Label2.Text = " ";

                Dictionary<string, string> state = new Dictionary<string, string>
                    {
                {"Chennai","Chennai" },
                {"Coimbathur","Coimbathur" },
                {"Avadi","Avadi" }

            };
                foreach (var item1 in state)
                {
                    DropDownList2.Items.Add(new ListItem(item1.Value, item1.Key));
                }

            }
            else if (DropDownList1.SelectedItem.Value == "Goa")
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add(new ListItem("Select a district", "g"));

                Label2.Text = " ";

                Dictionary<String, String> state = new Dictionary<string, string>
                {
                    {"midgoa","midgoa" },
                    { "beach","beach"},
                    {"ggg","ggg" }
                };

                foreach(var item1 in state)
                {
                    DropDownList2.Items.Add(new ListItem(item1.Value,item1.Key));
                }
            }



            else { }

        }


           
        }

            
           
        }
    
