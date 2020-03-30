using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;
using System.Data;

namespace WebApplication1
{
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");
            }

            GetEmptToDropdown();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Courses sob = new Courses(Convert.ToInt32(TextBox2.Text), TextBox3.Text, TextBox1.Text, Convert.ToInt32(DropDownList3.SelectedValue.ToString()));
            Class1 dbcon = new Class1();
            dbcon.Course(sob);
            Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");

            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox1.Text = string.Empty;
            DataTable dt = new DataTable();
        }
        public void GetEmptToDropdown()
        {
            Class1 ob = new Class1();
            DataTable dt = ob.getemptDtails();
            DropDownList3.DataSource = dt;
            DropDownList3.DataTextField = "em_fname";
            DropDownList3.DataValueField = "em_Id";
            DropDownList3.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
    }
}