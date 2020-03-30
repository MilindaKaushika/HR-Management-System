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
    public partial class Attendance : System.Web.UI.Page
    {
        string em_fname;
        string emID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nam"] == null)
            {
                Session["nam"] = 0;

            }

            else
            {
                emID = Session["Eid"].ToString();
                em_fname = Session["nam"].ToString();




                EmTd.Text = emID.ToString();
                txtEmpName.Text = em_fname.ToString();

            }

        
            Time.Text = DateTime.Now.ToString("hh:mm:ss");
            date.Text = DateTime.Today.ToString("MM/dd/yyyy");
            //publicVariables.currdate = Convert.ToDateTime(date.Text);
            

            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //DateTime timein ;
            //DateTime timeout ;
            //publicVariables.currTime = Convert.ToDateTime(Time.Text);
            //publicVariables.currdate = Convert.ToDateTime(date.Text);


            Class1 dbcon = new Class1();

            
            DateTime currDate = Convert.ToDateTime(date.Text);

            
            if (RadioButtonList1.SelectedItem.Text == "Time IN")
            {
               
                
                dbcon.AddInTime(Session["Eid"].ToString(), Time.Text, Session["nam"].ToString(), date.Text);
            }
            
            if (RadioButtonList1.SelectedItem.Text == "Time Out")
              {
            

                dbcon.AddOutTime(Convert.ToInt32(Session["Eid"].ToString()), date.Text, Time.Text);
                Response.Write("<script LANGUAGE='JavaScript' >alert('Working')</script>");
               }
            
            DataTable dt = new DataTable();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Save Successful')</script>");
          
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[3].Text.CompareTo("Present") == 0)
                {
                    e.Row.Cells[3].CssClass = "Orange";

                }
                else if (e.Row.Cells[3].Text.CompareTo("Absent") == 0)
                {
                    e.Row.Cells[3].CssClass = "Red";

                }
            }    
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Class1.emfname = "";

            //Class1 ob = new Class1();
            //ob.findmemberByIds(Convert.ToInt32(DropDownList2.SelectedItem.ToString()));
            //txtEmpName.Text = Class1.emfname;
      
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      

        

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }

    }
}