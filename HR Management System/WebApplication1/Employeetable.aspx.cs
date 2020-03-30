using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{

    public partial class Employeetable : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Label1.Text = gr.Cells[0].Text;
            TextBox2.Text = gr.Cells[1].Text;
            TextBox3.Text = gr.Cells[2].Text;
            TextBox4.Text = gr.Cells[3].Text;
            TextBox5.Text = gr.Cells[4].Text;
            TextBox6.Text = gr.Cells[5].Text;
            TextBox7.Text = gr.Cells[6].Text;
            TextBox8.Text = gr.Cells[7].Text;
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            //Employer sob = new Employer(TextBox1.Text, TextBox2.Text, DropDownList1.Text, TextBox6.Text, gen, TextBox3.Text, TextBox7.Text, TextBox5.Text, TextBox4.Text);
            //Class1 dbcon = new Class1();
            //dbcon.updateEm(sob);
            //GridView1.DataBind();
            //Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");
            //ClearControls();
        }
        private void ClearControls()
        {
            Label1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
    }
}