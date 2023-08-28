using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class Log_in : System.Web.UI.Page
    {
        ClbEntities data = new ClbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            var CIN = TextBox3.Text;
            var pass = TextBox4.Text;
            var res1 = data.Admins.Where(admin => admin.username == TextBox3.Text && admin.password == TextBox4.Text).Count();
            if (res1!=0)
            {
                Session["admin"] = TextBox3.Text;
                Response.Redirect("Admin.aspx");
            }
            var res = data.Clients.Where(client => client.Cinclient == CIN).Count();
            if (res != 0)
            {
                var password = data.Clients.Where(client => client.Password == pass).Count();
                if (password != 0)
                {

                    Session["client"] = TextBox3.Text;
                    Response.Redirect("ClientForm.aspx");
                }
                else
                {
                    //Response.Write("<script>alert('Password wrong');</script>");
                    Label2.Visible = true;

                }
            }
            
            else
            {
                //Response.Write("<script>alert('Username wrong');</script>");
                Label1.Visible = true;

            }
        }
    }
}