using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminEgitimEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.EğitimTableAdapter _context = new DataSetTableAdapters.EğitimTableAdapter();

        _context.EgitimEkle(TextBoxBaslik.Text, TextBoxAltbaslik.Text, TextBoxAciklama.Text, TextBoxNotOrt.Text, TextBoxTarih.Text);

        Response.Redirect("AdminEgitim.aspx");
    }
}