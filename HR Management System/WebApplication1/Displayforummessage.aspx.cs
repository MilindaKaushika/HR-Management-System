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
    public partial class Displayforummessage : System.Web.UI.Page
    {
        string UserName;

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
                UserName = Session["nam"].ToString();

              


                Label1.Text = UserName.ToString();
                LoadPost();
            }

            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");

            }
        }

        public void LoadPost()
        {

            SqlDataAdapter da = new SqlDataAdapter("Select * from Forum", con);
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
                    /* Post Authro */
                    HtmlGenericControl lblauthor = new HtmlGenericControl("label");
                    lblauthor.Attributes.Add("class", "divauthor");
                    lblauthor.InnerText = "Author :" + author; ;
                    /* Post Title (H2) */
                    HtmlGenericControl h2 = new HtmlGenericControl("h2");
                    h2.InnerText = title.ToString();
                    /* Post Message */
                    HtmlGenericControl divpostmsg = new HtmlGenericControl("div");
                    divpostmsg.Attributes.Add("class", "divpostmsg");
                    if (postmsg.Length > 200)
                    {
                        divpostmsg.InnerText = postmsg.Substring(0, 200) + "....";
                    }
                    if (postmsg.Length < 200)
                    {
                        divpostmsg.InnerText = postmsg.Substring(0, 100) + "....";
                    }
                    if (postmsg.Length > 100 || postmsg.Length < 100)
                    {
                        divpostmsg.InnerText = postmsg.Substring(0, 80) + "....";
                    }
                    HtmlGenericControl divreader = new HtmlGenericControl("div");
                    divreader.Attributes.Add("class", "divreader");
                    divpost.Controls.Add(divreader);

                    /* Post Read More */
                    HtmlGenericControl btnReadMore = new HtmlGenericControl("a");
                    btnReadMore.Attributes.Add("class", "btnreadmore");
                    btnReadMore.InnerText = "Read More";
                    divreader.Controls.Add(btnReadMore);

                    divpost.Controls.Add(lblauthor);
                    divpost.Controls.Add(h2);
                    divpost.Controls.Add(divpostmsg);
                    divpost.Controls.Add(divreader);
                    div_post_display_panel.Controls.Add(divpost);
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