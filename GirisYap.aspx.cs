using System;
using System.Data.SqlClient;

public partial class Giris : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb;Initial Catalog=BlogWebDB;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void ButtonGiris_Click(object sender, EventArgs e)
    {
        connection.Open();
        SqlCommand sqlCommand = new SqlCommand("Select * from Admin where Kullanıcı=@p1 and Sifre=@p2", connection);

        sqlCommand.Parameters.AddWithValue("@p1", TextBoxUsername.Text);
        sqlCommand.Parameters.AddWithValue("@p2", TextBoxPassword.Text);

        SqlDataReader reader = sqlCommand.ExecuteReader();
        if (reader.Read())
        {
            Response.Redirect("Hakkımda.aspx");
        }
        else
        {
            Response.Write("Hatalı Kullanıcı Adı ya da Şifre");
        }
        connection.Close();
    }
}