using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminYetenekSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"]);

        DataSetTableAdapters.YeteneklerTableAdapter _context = new DataSetTableAdapters.YeteneklerTableAdapter();

        _context.YetenekSil(id);

        Response.Redirect("AdminYetenek.aspx");
    }
}