using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class Displayourmessage : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("Select * from Forum where UserName='" + user1 + "'", con);
            con.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {


                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string id = ds.Tables[0].Rows[i]["Forum_ID"].ToString();
                    string author = ds.Tables[0].Rows[i]["UserName"].ToString();
                    string title = ds.Tables[0].Rows[i]["Title"].ToString();
                    string postmsg = ds.Tables[0].Rows[0]["Message"].ToString();
                    HtmlGenericControl divpost = new HtmlGenericControl("div");
                    divpost.Attributes.Add("class", "div_post_display");
                    divpost.Attributes.Add("id", id);
                    HtmlGenericControl lblauthor = new HtmlGenericControl("label");
                    lblauthor.Attributes.Add("class", "divauthor");
                    lblauthor.InnerText = "Author :" + author; ;
                    HtmlGenericControl h2 = new HtmlGenericControl("h2");
                    h2.InnerText = title.ToString();
                    HtmlGenericControl divpostmsg = new HtmlGenericControl("div");
                    divpostmsg.Attributes.Add("class", "divpostmsg");
                    divpostmsg.InnerText = postmsg.ToString();

                    HtmlGenericControl divreader = new HtmlGenericControl("div");
                    divreader.Attributes.Add("class", "divreader");
                    divpost.Controls.Add(divreader);

                    HtmlGenericControl btnReadMore = new HtmlGenericControl("a");
                    btnReadMore.Attributes.Add("class", "btnreadmore");
                    btnReadMore.InnerText = "Read More";
                    divreader.Controls.Add(btnReadMore);

                    divpost.Controls.Add(lblauthor);
                    divpost.Controls.Add(h2);
                    divpost.Controls.Add(divreader);
                    divpost.Controls.Add(divpostmsg);
                 
                    div_post_display_panel.Controls.Add(divpost);
                    
                }
            }
        }

        public void ReadArticles1(string id)
        {
            Response.Write(id);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("login.aspx");
        }
    }
}