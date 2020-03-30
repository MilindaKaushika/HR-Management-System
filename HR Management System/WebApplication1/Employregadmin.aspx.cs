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
    public partial class Employregadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");

            }
            GetdeptToDropdown();
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
            Employer sob = new Employer(TextBox2.Text, TextBox3.Text, DropDownList1.Text, TextBox6.Text, gen, TextBox1.Text, TextBox7.Text, TextBox5.Text, TextBox4.Text, DropDownList2.SelectedValue.ToString());
            Class1 dbcon = new Class1();
            dbcon.Insert(sob);
            Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            DropDownList1.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox7.Text = string.Empty;
            DataTable dt = new DataTable();
        }
        public void GetdeptToDropdown()
        {
            Class1 ob = new Class1();
            DataTable dt = ob.getDeptDtails();
            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "DepName";
            DropDownList2.DataValueField = "DepID";
            DropDownList2.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
    }
}