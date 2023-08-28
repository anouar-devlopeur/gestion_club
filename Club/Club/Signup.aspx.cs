
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class Signup : System.Web.UI.Page
    {
        ClbEntities data = new ClbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Rempllirdrop1();
               
            }
            Label1.Visible = false;
            //comfirmation password

                TextBox4.Attributes["value"] = TextBox4.Text;
                TextBox5.Attributes["value"] = TextBox5.Text;
         
        }

        private void Rempllirdrop1()
        {
            DropDownList1.DataSource = data.Ctaegories.ToList();
            DropDownList1.DataTextField = "NomCategorie";
            DropDownList1.DataValueField = "idcatgorie";
            DropDownList1.DataBind();

        }
       
        protected void Button3_Click(object sender, EventArgs e)
        {
            var cin = TextBox1.Text;
            var res = data.Clients.FirstOrDefault(c => c.Cinclient == cin);
            if (res==null)
            {
                Client cl = new Client();
                cl.Cinclient = TextBox1.Text;
                cl.Nomclient = TextBox2.Text;
                cl.Prenom_cl = TextBox8.Text;
                var res1 = data.Clients.FirstOrDefault(c => c.Email == TextBox3.Text);               
                if (res1!=null)
                {
                    Response.Write("<script>alert('Email');</script>");
                }
                else
                {
                    cl.Email = TextBox3.Text;
                    cl.Password = TextBox4.Text;
                    cl.N_tele = int.Parse(TextBox6.Text);
                    cl.datedebut = DateTime.Parse(TextBox7.Text);
                    if (RadioButton1.Checked == true)
                    {
                        cl.Genre = "Male";
                    }
                    else
                    {
                        cl.Genre = "Female";
                    }

                    cl.idSouscategorie = int.Parse(DropDownList2.SelectedValue);
                    data.Clients.Add(cl);
                    data.SaveChanges();
                    var prix = Session["prixc"].ToString();
                    Session["prix"] = prix;
                    Session["cin"] = cin;
                    Response.Redirect("paye.aspx");
                }
             
            }
            else
            {
                Response.Write("<script>alert('SomethingWrong');</script>");
            }
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

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int prix = int.Parse(DropDownList2.SelectedValue);
            var res = data.SousCatgories.FirstOrDefault(ca => ca.idSouscategorie == prix);          
            Label1.Text = res.prix.ToString();
            Session["prixc"] = Label1.Text;
            Label1.Visible = false;

        }
    }
}