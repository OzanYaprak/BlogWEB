using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminYetenekGüncelle : System.Web.UI.Page
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
                DataSetTableAdapters.YeteneklerTableAdapter _context = new DataSetTableAdapters.YeteneklerTableAdapter();

                TextBoxYetenek.Text = _context.YetenekGetir(Convert.ToInt32(id))[0].Yetenek;
            }
        }
        catch { }
    }

    protected void ButtonKaydet_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.YeteneklerTableAdapter _context = new DataSetTableAdapters.YeteneklerTableAdapter();

        _context.YetenekGüncelle(TextBoxYetenek.Text, Convert.ToInt32(TextBoxID.Text));
        Response.Redirect("adminyetenek.aspx");
    }

    protected void ButtonGeri_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminyetenek.aspx");
    }
}