using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication1
{
    public partial class leave : System.Web.UI.Page
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
            GetdeptToDropdown();
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");

            }
        }
              

        protected void DropDownList3_SelectedIndexChanged1(object sender, EventArgs e)
        { 
            string Check = DropDownList3.SelectedItem.Text;
            if (Check == "FullDay")
            {
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
                body.Text = "";
            }
            else if (Check == "Halfday")
            {
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                body.Text = "0.5";
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //MailMessage message = new MailMessage(DropDownList1.Text, DropDownList4.Text, TextBox3.Text, body.Text);
                //message.IsBodyHtml = true;
                //SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                //client.EnableSsl = true;
                //client.Credentials = new System.Net.NetworkCredential("milindakaushika@outlook.com", "12345678ab");
                //client.Send(message);

                Leave sob = new Leave(TextBox4.Text, TextBox8.Text, DropDownList3.SelectedValue.ToString(), DropDownList1.SelectedValue.ToString(), TextBox1.Text, TextBox2.Text, TextBox3.Text, body.Text, Convert.ToInt32(DropDownList2.SelectedValue.ToString()));
                Class1 dbcon = new Class1();
                dbcon.isertlevae(sob);
                Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");
                DataTable dt = new DataTable();
            }

            catch (Exception ex)
            {

            }
            finally
            {

            }

        }
     private void ClearControls()
        {
         try
         { 
            DateTime dt;
            DateTime dt1;

            dt = Convert.ToDateTime(TextBox1.Text);
            dt1 = Convert.ToDateTime(TextBox2.Text);
            TimeSpan daydif = (dt - dt1);
            double dayd = daydif.TotalDays;
            body.Text = dayd.ToString(); 
        }
         catch (Exception ex)
         {

         }
         finally
         {
           
         }
        }

     protected void TextBox2_TextChanged(object sender, EventArgs e)
     {
         ClearControls();
     }
  

    public void GetdeptToDropdown()
        {
            Class1 ob = new Class1();
            DataTable dt = ob.getDeptDtails();
           DropDownList1.DataSource = dt;
           DropDownList1.DataTextField = "DepName";
           DropDownList1.DataValueField = "DepName";
           DropDownList1.DataBind();
        }

    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Class1.em_fname = "";
        Class1.em_email = "";
        Class1 ob = new Class1();
        ob.findmemberByIdetails(Convert.ToInt32(DropDownList2.SelectedItem.ToString()));
        TextBox4.Text = Class1.em_fname;
        TextBox8.Text = Class1.em_email;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["User"] = null;
        Response.Redirect("login.aspx");
    }
    }
}