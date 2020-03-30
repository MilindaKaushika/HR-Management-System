using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class Registerleave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Department sob = new Department(TextBox2.Text, TextBox3.Text);
            Class1 dbcon = new Class1();
            dbcon.Depadd(sob);
         
            Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
    }
}