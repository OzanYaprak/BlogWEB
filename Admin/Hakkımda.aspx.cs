using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hakkımda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false) /*Ders 21 dk.4:20*/
        {

            DataSetTableAdapters.HakkımdaTableAdapter _dbcontext = new DataSetTableAdapters.HakkımdaTableAdapter();
            TextBox1.Text = _dbcontext.HakkımdaListele()[0].Ad;
            TextBox2.Text = _dbcontext.HakkımdaListele()[0].Soyad;
            TextBox3.Text = _dbcontext.HakkımdaListele()[0].Adres;
            TextBox4.Text = _dbcontext.HakkımdaListele()[0].Mail;
            TextBox5.Text = _dbcontext.HakkımdaListele()[0].Telefon;
            TextBox6.Text = _dbcontext.HakkımdaListele()[0].Kısanot;
            TextBox7.Text = _dbcontext.HakkımdaListele()[0].Fotoğraf;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.HakkımdaTableAdapter _dbcontext = new DataSetTableAdapters.HakkımdaTableAdapter();
        _dbcontext.HakkımdaGuncelle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, 1);

        Response.Redirect("Default.Aspx");
    }
}