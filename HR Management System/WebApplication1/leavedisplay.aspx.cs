using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;

namespace WebApplication1
{
    public partial class leavedisplay : System.Web.UI.Page
    {
        string user1;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nam"] == null)
            {
                Session["nam"] = 0;
                LoadPost();
            }

            else
            {
                user1 = Session["nam"].ToString();




                welcome.Text = user1.ToString();
                LoadPost();
            }
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");

            }
        }
        public void LoadPost()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Leave where em_fname='" + user1 + "'", con);
            con.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {


                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string id = ds.Tables[0].Rows[i]["leave_Id"].ToString();
                    string author = ds.Tables[0].Rows[i]["em_fname"].ToString();
                    string title = ds.Tables[0].Rows[i]["leave_reason"].ToString();
                    string leave_reason = ds.Tables[0].Rows[i]["leave_days"].ToString();
                    string Noleaves = ds.Tables[0].Rows[i]["em_Apporel"].ToString();
                    string approvaldate = ds.Tables[0].Rows[i]["leave_to"].ToString();
                  
                    HtmlGenericControl divpost = new HtmlGenericControl("div");
                    divpost.Attributes.Add("class", "div_post_display");
                    divpost.Attributes.Add("id", id);
                    HtmlGenericControl lblauthor = new HtmlGenericControl("label");
                    lblauthor.Attributes.Add("class", "divauthor");
                    lblauthor.InnerText = "UserName :" + author; ;
                    HtmlGenericControl h2 = new HtmlGenericControl("h2");
                    h2.InnerText = "Leave Reason :" + title;
                    HtmlGenericControl h3 = new HtmlGenericControl("h3");
                    h3.InnerText = "Number of leaves :" + leave_reason;
                    HtmlGenericControl h1 = new HtmlGenericControl("h1");
                    h1.InnerText=Noleaves.ToString();
                  
                    HtmlGenericControl divpostmsg = new HtmlGenericControl("h4");
                    divpostmsg.Attributes.Add("class", "divpostmsg");
                    divpostmsg.InnerText = "Leave Apply Date :" + approvaldate; 

                    HtmlGenericControl divreader = new HtmlGenericControl("div");
                    divreader.Attributes.Add("class", "divreader");
                    divpost.Controls.Add(divreader);

                    HtmlGenericControl btnReadMore = new HtmlGenericControl("a");
                    btnReadMore.Attributes.Add("class", "btnreadmore");
                  

                    divpost.Controls.Add(lblauthor);
                    divpost.Controls.Add(h2);
                    divpost.Controls.Add(h3);
                    divpost.Controls.Add(h1);
                    divpost.Controls.Add(divreader);
                    divpost.Controls.Add(divpostmsg);

                    div_post_display_panel.Controls.Add(divpost);

                }
            }
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
    }
}