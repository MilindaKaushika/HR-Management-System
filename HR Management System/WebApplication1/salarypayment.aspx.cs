using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class salarypayment : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             try
            {
            double Ba, Att, total;
            Ba = Convert.ToDouble(TextBox3.Text);
            Att = Convert.ToDouble(TextBox6.Text);
           

            total = Ba - Convert .ToDouble (TextBox4.Text) - Convert .ToDouble (TextBox5 .Text ) - ((Ba / 30) * Att);
            Label1.Text = total.ToString("");



            Salary sob = new Salary(TextBox7.Text, Convert.ToInt32(DropDownList1.SelectedValue.ToString()), TextBox1.Text, TextBox2.Text, Convert.ToDouble(TextBox3.Text), Convert.ToDouble(TextBox4.Text), Convert.ToDouble(TextBox5.Text), Convert.ToInt32(TextBox6.Text), Convert.ToDouble(Label1.Text));
            Class1 dbcon = new Class1();
            dbcon.isertsalary(sob);

            Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            }
             catch (Exception ex)
             {

             }
             finally
             {
             
             }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Class1.depname = "";
            Class1.noleave = "";
            Class1 ob = new Class1();
            ob.findmemberById(DropDownList1.SelectedItem.ToString());
            TextBox1.Text = Class1.depname;
            TextBox6.Text = Class1.noleave;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }


      
        protected void Button3_Click(object sender, EventArgs e)
        {
            double EPF, ETF;


            EPF = Convert.ToDouble(TextBox3.Text) * 8 / 100;
            ETF = Convert.ToDouble(TextBox3.Text) * 3 / 100;
            TextBox4.Text = Convert.ToString(EPF);
            TextBox5.Text = Convert.ToString(ETF);
        }

    }

}
    