using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class forumRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gen = "";
            if (RadioButton1.Checked)
            {
                gen = "Male";
            }
            else if (RadioButton2.Checked)
            {
                gen = "Female";

            }
            Forumregister sob = new Forumregister(TextBox1.Text, TextBox2.Text, TextBox6.Text, gen, TextBox4.Text, TextBox5.Text);
            Class1 dbcon = new Class1();
            dbcon.Foureminsert(sob);
            Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");
            Response.Redirect("login.aspx");
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
           
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
           
          
        }
    }
}