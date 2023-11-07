using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHobi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.HobilerTableAdapter _context = new DataSetTableAdapters.HobilerTableAdapter();
        Repeater1.DataSource = _context.HobilerListele();
        Repeater1.DataBind();
    }
}