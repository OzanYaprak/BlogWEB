using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminOdulGüncelle : System.Web.UI.Page
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
                DataSetTableAdapters.ÖdüllerTableAdapter _context = new DataSetTableAdapters.ÖdüllerTableAdapter();

                TextBoxOdul.Text = _context.OdulGetir(Convert.ToInt32(id))[0].Ödül;
            }
        }
        catch { }
    }

    protected void ButtonKaydet_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.ÖdüllerTableAdapter _context = new DataSetTableAdapters.ÖdüllerTableAdapter();

        _context.OdulGüncelle(TextBoxOdul.Text, Convert.ToInt32(TextBoxID.Text));
        Response.Redirect("adminodul.aspx");
    }

    protected void ButtonGeri_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminodul.aspx");
    }
}