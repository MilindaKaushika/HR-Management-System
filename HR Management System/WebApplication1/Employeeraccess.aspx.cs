using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Employeeraccess : System.Web.UI.Page
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
                emID= Session["Eid"].ToString();
                em_fname = Session["nam"].ToString();

                divwelcome.Visible = true;


                Label1.Text = em_fname.ToString()+emID;

            }


            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");

            }
        }

     

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
    }
}