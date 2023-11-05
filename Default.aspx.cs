using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.HakkımdaTableAdapter hakkımdaTable = new DataSetTableAdapters.HakkımdaTableAdapter();
        Repeater1.DataSource = hakkımdaTable.HakkımdaListele();
        Repeater1.DataBind();

        DataSetTableAdapters.TecrübeTableAdapter tecrübeTable = new DataSetTableAdapters.TecrübeTableAdapter();
        Repeater2.DataSource = tecrübeTable.TecrübeListele();
        Repeater2.DataBind();

        DataSetTableAdapters.EğitimTableAdapter eğitimTable = new DataSetTableAdapters.EğitimTableAdapter();
        Repeater3.DataSource = eğitimTable.EğitimListele();
        Repeater3.DataBind();

        DataSetTableAdapters.HobilerTableAdapter hobilerTable = new DataSetTableAdapters.HobilerTableAdapter();
        Repeater5.DataSource = hobilerTable.HobilerListele();
        Repeater5.DataBind();
    }
}