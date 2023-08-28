using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class ClientForm : System.Web.UI.Page
    {
        ClbEntities data = new ClbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
       
            if (!IsPostBack)
            {
                Rempllirdrop1();
            }

            if (Session["client"] == null)
            {
                Response.Redirect("Home.aspx");

            }
            else
            {
                Label1.Text = Session["client"].ToString();
                Session["cin"] = Label1.Text;
              
                afichagegridview();

            }
        }

        private void afichagegridview()
        {
            var res = data.Clients.Join(data.SousCatgories, cl => cl.idSouscategorie, sous => sous.idSouscategorie, (cl, sous) => new { cl, sous }).
                Join(data.Ctaegories, souscat => souscat.sous.idcatgorie, cat => cat.idcatgorie, (souscat, cat) => new { souscat, cat }).
                Where(rempl => rempl.souscat.cl.Cinclient == Label1.Text).Select(s => new
                {
                    Nom = s.souscat.cl.Nomclient,
                  
                    Sport = s.souscat.sous.Nomsouscatgorie,
                    date = s.souscat.cl.datedebut,
                    Methode_prix=s.souscat.cl.cash,
                  
                });

            GridView1.DataSource = res.ToList();
            GridView1.DataBind();
        }

        private void Rempllirdrop1()
        {
            DropDownList1.DataSource = data.Ctaegories.ToList();
            DropDownList1.DataTextField = "NomCategorie";
            DropDownList1.DataValueField = "idcatgorie";
            DropDownList1.DataBind();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = int.Parse(DropDownList2.SelectedValue);
            var res = data.Clients.FirstOrDefault(cl => cl.idSouscategorie == id);
            if (res == null)
            {
                Client d = new Client();
                d.Cinclient = Label1.Text;
                d.idSouscategorie =id;
                d.datedebut = DateTime.Now;               
                data.Clients.Add(d);
                data.SaveChanges();
                afichagegridview();
                var prix = Session["prixc"].ToString();
                Session["prix"] = prix;
                Session["cin"] = Label1.Text;
                Response.Redirect("paye.aspx");

            }
            else
            {
                
            }
         
        }
    
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

            int prix = int.Parse(DropDownList2.SelectedValue);
            var res = data.SousCatgories.FirstOrDefault(ca => ca.idSouscategorie == prix);
            Label2.Text = res.prix.ToString();
            Session["prixc"] = Label2.Text;


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
                DropDownList2.Items.Clear();
                int categoeir = int.Parse(DropDownList1.SelectedValue);
                var res = data.SousCatgories.Where(ca => ca.idcatgorie == categoeir).ToList();
                DropDownList2.DataSource = res;
                DropDownList2.DataTextField = "Nomsouscatgorie";
                DropDownList2.DataValueField = "idSouscategorie";
                DropDownList2.DataBind();
                 
          
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var id = int.Parse(DropDownList2.SelectedValue);
            var res = data.Clients.FirstOrDefault(cl => cl.idSouscategorie == id && cl.Cinclient==Label1.Text);
            if (res != null)
            {

                data.Clients.Remove(res);
                data.SaveChanges();
                afichagegridview();
            }
            else
            {
                

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["x"] = null;
            Response.Redirect("Log in.aspx");
            
        }
    }
}
