using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class dashhboard : System.Web.UI.Page
    {
        string UserName;
        string datetime = System.DateTime.Now.Date.ToLongDateString();
          protected void Page_Load(object sender, EventArgs e)
          {
              if (Session["nam"] == null)
              {
                  Session["nam"] = 0;

              }

              else
              {
                  UserName = Session["nam"].ToString();
                
                  divwelcome.Visible = true;


                  txtposttitle.Text = UserName.ToString();

              }

              if (Session["User"] == null)
              {
                  Response.Redirect("login.aspx");

              }
          }
              
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Forumfeedback sob = new Forumfeedback(TextBox1.Text, TextBox3.Text, TextBox2.Text, txtpostmessage.InnerText.ToString(), txtposttitle.Text);
            Class1 dbcon = new Class1();
            dbcon.Fouremmessage(sob);

            Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            txtpostmessage.InnerText.ToString();
            txtposttitle.Text = string.Empty;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
        
    }
}