using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminYetenek : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.YeteneklerTableAdapter _context = new DataSetTableAdapters.YeteneklerTableAdapter();
        Repeater1.DataSource = _context.YetenekListele();
        Repeater1.DataBind();
    }
}