
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using WebApplication1.Models;
using System.Data;




namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        Class1 ba = new Class1();
        User ob = new User();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string eid=null;
                ob.em_fname = TextBox1.Text;
                ob.em_password = TextBox2.Text;
                dt = ba.ValidateUser(ob);
                eid = dt.Rows[0]["em_id"].ToString();
                if (dt.Rows[0]["em_usertype"].ToString() == "Emplyee")
                {
                    Session["nam"] = TextBox1.Text;
                    //publicVariables.username = Convert.ToString(Session["nam"]);
                    Session["User"] = ob.em_fname;
                    Session["Eid"] = eid;
                    //publicVariables.EmployeeID = dt.Rows[0]["em_id"].ToString();
                    Response.Redirect("Employeeraccess.aspx");
                    Response.Write("<script>alert('Invalid username and password') </script>");
                }
                else if (dt.Rows[0]["em_usertype"].ToString() == "HR")
                {
                    Session["nam"] = TextBox1.Text;
                    //publicVariables.username = Convert.ToString(Session["nam"]);
                    Session["User"] = ob.em_fname;
                    Session["Eid"] = eid;
                    Response.Redirect("HR.aspx");
                }
                else if (dt.Rows[0]["em_usertype"].ToString() == "Admin")
                {
                    Session["nam"] = TextBox1.Text;
                    //publicVariables.username = Convert.ToString(Session["nam"]);
                    Session["User"] = ob.em_fname;
                    Session["Eid"] = eid;
                    Response.Redirect("Main.aspx");
                }

                else
                {
                    Response.Write("<script>alert('Invalid username and password')</script>");

                }
                
            }
            catch (Exception ex)
            {

            }
            finally
            {
             
            }

            ob.UserName = TextBox1.Text;
            ob.Password = TextBox2.Text;
            dt = ba.fouremUser(ob);

            if (dt.Rows.Count > 0)
            {

                Session["nam"] = TextBox1.Text;
               //publicVariables.Username = TextBox1.Text;
                Session["User"] = ob.UserName;
                Response.Redirect("Forum.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid username and password')</script>");

            }
        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

    }

}
