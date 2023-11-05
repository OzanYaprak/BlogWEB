using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminTecrübeler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TecrübeTableAdapter _context = new DataSetTableAdapters.TecrübeTableAdapter();
        Repeater1.DataSource = _context.TecrübeListele();
        Repeater1.DataBind();
    }
}