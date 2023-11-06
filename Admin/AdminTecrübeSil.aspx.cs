using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminTecrübeSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"]);

        DataSetTableAdapters.TecrübeTableAdapter _context = new DataSetTableAdapters.TecrübeTableAdapter();

        _context.TecrübeSil(id);
        
        Response.Redirect("AdminTecrübeler.aspx");
    }
}