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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetdeptToDropdown();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gen = "";
            if (RadioButtonList1.SelectedIndex > -1)
            {
                gen =  RadioButtonList1.SelectedItem.Text;
            }
            
            
            
            Employer sob = new Employer(TextBox1.Text, TextBox2.Text, DropDownList1.Text, TextBox6.Text, gen, TextBox3.Text, TextBox7.Text, TextBox5.Text, TextBox4.Text, DropDownList2.SelectedValue.ToString());
            Class1 dbcon = new Class1();
            dbcon.Insert(sob);
            Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");
            Response.Redirect("login.aspx");
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           //if(DropDownList1.SelectedIndex.Equals(1))
           //{
           //    Response.Redirect("Dashboard.aspx");
           //}
           //if (DropDownList1.SelectedIndex.Equals(2))
           //{
           //    Response.Redirect("HR.aspx");
           //}
        }

       

        
       
    }
}