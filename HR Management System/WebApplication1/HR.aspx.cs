using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class HR : System.Web.UI.Page
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

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
    }
}