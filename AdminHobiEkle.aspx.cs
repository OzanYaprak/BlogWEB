using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHobiEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonKaydet_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.HobilerTableAdapter _context = new DataSetTableAdapters.HobilerTableAdapter();

        _context.HobiEkle(TextBoxHobi.Text);

        Response.Redirect("AdminHobi.aspx");
    }

    protected void ButtonGeri_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHobi.aspx");
    }
}