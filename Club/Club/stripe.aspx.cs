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
    public partial class WebForm2 : System.Web.UI.Page
    {
        ClbEntities data = new ClbEntities();
        public string sessionId;
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["prix"].ToString();

            var prix = Session["prix"].ToString();

            StripeConfiguration.ApiKey = "sk_test_4eC39HqLyjWDarjtT1zdp7dc";

            var options = new SessionCreateOptions
            {
                SuccessUrl = "https://localhost:51893/success?id={CHECKOUT_SESSION_ID}",
                CancelUrl = "http://localhost:51893/paye.aspx",
                PaymentMethodTypes = new List<string>
            {
                     "card",
            },
                LineItems = new List<SessionLineItemOptions>
            {
                    new SessionLineItemOptions
            {
                         Name="AnubisClub",
                         Description=prix,
                         Amount=int.Parse(prix),
                         Currency="usd",
                         Quantity=1
                    },
                },
                Mode = "payment",
            };
            var service = new SessionService();
            Session session = service.Create(options);
            sessionId = session.Id;
       
            
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //var cin = Session["cin"].ToString();
            //var res = data.Clients.FirstOrDefault(c => c.Cinclient == cin);
            //if (res!=null)
            //{
            //    res.cash = "En Attent";
            //    data.SaveChanges();
            //}
            Response.Redirect("paye.aspx");
        }
       
        protected void Button2_Click(object sender, EventArgs e)
        {

          
        }
    }
}