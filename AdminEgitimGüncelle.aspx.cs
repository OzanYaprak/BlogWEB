using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminEgitimGüncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);

            TextBoxID.Enabled = false;
            TextBoxID.Text = id.ToString();

            //------------

            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.EğitimTableAdapter _context = new DataSetTableAdapters.EğitimTableAdapter();

                TextBoxBaslik.Text = _context.EgitimGetir(Convert.ToInt32(id))[0].Başlık;
                TextBoxAltbaslik.Text = _context.EgitimGetir(Convert.ToInt32(id))[0].Altbaşlık;
                TextBoxAciklama.Text = _context.EgitimGetir(Convert.ToInt32(id))[0].Açıklama;
                TextBoxNotOrt.Text = _context.EgitimGetir(Convert.ToInt32(id))[0].NotOrt;
                TextBoxTarih.Text = _context.EgitimGetir(Convert.ToInt32(id))[0].Tarih;
            }
        }
        catch { }
    }

    protected void ButtonGuncelle_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.EğitimTableAdapter _context = new DataSetTableAdapters.EğitimTableAdapter();

        _context.EgitimGüncelle(TextBoxBaslik.Text, TextBoxAltbaslik.Text, TextBoxAciklama.Text, TextBoxNotOrt.Text, TextBoxTarih.Text, Convert.ToInt32(TextBoxID.Text));
        Response.Redirect("adminegitim.aspx");
    }
}