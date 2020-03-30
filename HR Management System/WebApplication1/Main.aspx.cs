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
    public partial class Main : System.Web.UI.Page
    {
        string em_fname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nam"] == null)
            {
                Session["nam"] = 0;

            }

            else
            {
                em_fname = Session["nam"].ToString();

                divwelcome.Visible = true;


                Label1.Text = em_fname.ToString();

            }
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");

            }

        }

     
        
        protected void Button2_Click1(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           try
            {
            Class1 dbcon = new Class1();
            dbcon.deletestd(Convert.ToInt32(TextBox8.Text));
            Response.Write("<script LANGUAGE='JavaScript' >alert('Successful Delete')</script>");
            GridView1.DataBind();
            TextBox8.Text = string.Empty;
            }
           catch (Exception ex)
           {

           }
           finally
           {
              
           }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
    }
}