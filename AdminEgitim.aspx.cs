﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminEgitim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.EğitimTableAdapter _context = new DataSetTableAdapters.EğitimTableAdapter();
        Repeater1.DataSource = _context.EğitimListele();
        Repeater1.DataBind();
    }
}