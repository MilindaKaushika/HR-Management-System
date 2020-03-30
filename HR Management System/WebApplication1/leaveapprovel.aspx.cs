using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class leaveapprovel : System.Web.UI.Page
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
            GridViewRow gr = GridView2.SelectedRow;
            Label1.Text = gr.Cells[0].Text;
            TextBox1.Text = gr.Cells[1].Text;
            TextBox2.Text = gr.Cells[7].Text;
   
        
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[8].Text.CompareTo("Approvel") == 0)
                {
                    e.Row.Cells[8].CssClass = "Orange";

                }
                else if (e.Row.Cells[8].Text.CompareTo("Reject") == 0)
                {
                    e.Row.Cells[8].CssClass = "Red";

                }
                else if (e.Row.Cells[8].Text.CompareTo("Waiting for Approve") == 0)
                {
                    e.Row.Cells[8].CssClass = "Gold";

                }
            }    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
              try
            {
                Leave sob = new Leave(Convert.ToInt32(Label1.Text), DropDownList1.Text);
            Class1 dbcon = new Class1();
            dbcon.updatelevae(sob);
            GridView2.DataBind();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");
        
        }
             
            catch (Exception ex)
            {

            }
            finally
            {

            }
    }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
}}