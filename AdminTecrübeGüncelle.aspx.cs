using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminTecrübeGüncelle : System.Web.UI.Page
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
                DataSetTableAdapters.TecrübeTableAdapter _context = new DataSetTableAdapters.TecrübeTableAdapter();

                TextBoxBaslık.Text = _context.TecrübeGetir(Convert.ToInt32(id))[0].Başlık;
                TextBoxAltbaslık.Text = _context.TecrübeGetir(Convert.ToInt32(id))[0].Altbaşlık;
                TextBoxAcıklama.Text = _context.TecrübeGetir(Convert.ToInt32(id))[0].Açıklama;
                TextBoxTarih.Text = _context.TecrübeGetir(Convert.ToInt32(id))[0].Tarih;
            }
        }
        catch { }
    }

    protected void ButtonGuncelle_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TecrübeTableAdapter _context = new DataSetTableAdapters.TecrübeTableAdapter();

        _context.TecrübeGüncelle(TextBoxBaslık.Text, TextBoxAltbaslık.Text, TextBoxAcıklama.Text, TextBoxTarih.Text, Convert.ToInt32(TextBoxID.Text));
        Response.Redirect("admintecrübeler.aspx");
    }
}