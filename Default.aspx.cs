using System;

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

        DataSetTableAdapters.YeteneklerTableAdapter yeteneklerlerTable = new DataSetTableAdapters.YeteneklerTableAdapter();
        Repeater4.DataSource = yeteneklerlerTable.YetenekListele();
        Repeater4.DataBind();

        DataSetTableAdapters.HobilerTableAdapter hobilerTable = new DataSetTableAdapters.HobilerTableAdapter();
        Repeater5.DataSource = hobilerTable.HobilerListele();
        Repeater5.DataBind();

        DataSetTableAdapters.ÖdüllerTableAdapter ödüllerTable = new DataSetTableAdapters.ÖdüllerTableAdapter();
        Repeater6.DataSource = ödüllerTable.ÖdüllerListele();
        Repeater6.DataBind();
    }
}