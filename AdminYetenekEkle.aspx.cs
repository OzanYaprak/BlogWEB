using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminYetenekEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonKaydet_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.YeteneklerTableAdapter _context = new DataSetTableAdapters.YeteneklerTableAdapter();

        _context.YetenekEkle(TextBoxYetenek.Text);

        Response.Redirect("AdminYetenek.aspx");
    }

    protected void ButtonGeri_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminYetenek.aspx");
    }
}