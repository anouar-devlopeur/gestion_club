using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Club
{
    public partial class Admin : System.Web.UI.Page
    {
        ClbEntities data = new ClbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill();
                RempllirCat();
                Remplirclient();

            }
            if (Session["admin"]==null)
            {
                Response.Redirect("Home.aspx");
            }
            
        }

        private void Remplirclient()
        {
            DropDownList3.DataSource = data.Clients.ToList();
            DropDownList3.DataTextField = "Cinclient";
            DropDownList3.DataValueField = "Cinclient";
            DropDownList3.DataBind();
        }

        private void Fill()
        {
            var res = data.Clients.Select(s => new {
                s.Cinclient,
                s.Nomclient,
                s.Prenom_cl,
                s.SousCatgorie.Nomsouscatgorie,
                s.SousCatgorie.prix,
                s.cash,
                s.card,
                s.datedebut

            }).ToList();

            GridView1.DataSource = res;
            GridView1.DataBind();
            //var sum = 0;
            //for (int i = 0; i <GridView1.Rows.Count; i++)
            //{
               
            //}
        }
        private void RempllirCat()
        {
            DropDownList1.DataSource = data.Ctaegories.ToList();
            DropDownList1.DataTextField = "NomCategorie";
            DropDownList1.DataValueField = "idcatgorie";
            DropDownList1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
           
                Fill();
                GridView1.PageIndex = e.NewPageIndex;
                GridView1.DataBind();
          
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
            int souscategoeir = int.Parse(DropDownList2.SelectedValue);
            var res = data.Clients.Where(c => c.idSouscategorie == souscategoeir).Select(s => new {
                s.Cinclient,
                s.Nomclient,
                s.Prenom_cl,
                s.SousCatgorie.Nomsouscatgorie,
                s.SousCatgorie.prix,
                s.cash,
                s.card,
                s.datedebut

            }).ToList();
            GridView1.DataSource = res;
            GridView1.DataBind();
           

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            var cinclient = (DropDownList3.SelectedValue);
            //var res = data.Clients.Where(c => c.Cinclient == cinclient).ToList();
            var res = data.Clients.Where(c => c.Cinclient == cinclient).Select(s => new {
                s.Cinclient,
                s.Nomclient,
                s.Prenom_cl,
                s.SousCatgorie.Nomsouscatgorie,
                s.SousCatgorie.prix,
                s.cash,
                s.card,
                s.datedebut

            }).ToList();
            GridView1.DataSource = res;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var row = e.RowIndex;
            var select = GridView1.Rows[row].Cells[1].Text;
            var res = data.Clients.FirstOrDefault(c => c.Cinclient == select);
            if (res!=null)
            {
                data.Clients.Remove(res);
                data.SaveChanges();
                Fill();
            }
           
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //var equal = GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox;
            //var equal1=GridView1.Rows[e.RowIndex].Cells[10].Controls[0] as TextBox;
            //var idsou = int.Parse(equal.Text);
            //var dated = DateTime.Parse(equal1.Text);
            //var select = GridView1.Rows[e.RowIndex].Cells[12].Text;
            //var res = data.Clients.FirstOrDefault(c => c.Cinclient == select);

            //    res.idSouscategorie = idsou;
            //    res.datedebut = dated;
            //    data.SaveChanges();
            //    GridView1.EditIndex = -1
            //int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            //
            //((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text.ToString();
            //((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text.ToString();
            //int a = e.RowIndex;
            //int id = int.Parse(GridView1.Rows[a].Cells[1].Text);
            //var res = data.Clients.FirstOrDefault(f => f.Cinclient == select);
            //if (res != null)
            //{
            //    var text = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            //    res.Nomclient = text.ToString();
            //    data.SaveChanges();

             
            //    GridView1.EditIndex = -1;
            //    Fill();
            //}
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //GridView1.EditIndex = e.NewEditIndex;
            //Fill();
          
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //GridView1.EditIndex = -1;
            //Fill();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
         
        }

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("Log in.aspx");                   
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}