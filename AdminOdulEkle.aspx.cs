using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminOdulEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonKaydet_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.ÖdüllerTableAdapter _context = new DataSetTableAdapters.ÖdüllerTableAdapter();

        _context.OdulEkle(TextBoxOdul.Text);

        Response.Redirect("AdminOdul.aspx");
    }

    protected void ButtonGeri_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminOdul.aspx");
    }
}