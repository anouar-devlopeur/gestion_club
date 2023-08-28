using Stripe;
using Stripe.Checkout;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class mastercard : System.Web.UI.Page
    {

        ClbEntities data = new ClbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["prix"].ToString();
            if (Session["prix"]==null)
            {
                Response.Redirect("ClientForm.aspx");
            }
  
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
         
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientForm.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }

        protected void Button2_Click2(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click3(object sender, EventArgs e)
        {
            var cin = Session["cin"].ToString();
            var res = data.Clients.FirstOrDefault(c => c.Cinclient == cin);
            if (res != null)
            {
                res.cash = "En Attent";
                data.SaveChanges();

                Response.Redirect("log in.aspx");
            }
        }

        protected void Button1_Click3(object sender, EventArgs e)
        {
            var prix = Session["prix"].ToString();
            Session["prix"] = prix;
            var cin = Session["cin"].ToString();
            var res = data.Clients.FirstOrDefault(c => c.Cinclient == cin);
            if (res != null)
            {
                res.card = "MasterCard";
                data.SaveChanges();

            }
            Response.Redirect("stripe.aspx");
        }
    }
}