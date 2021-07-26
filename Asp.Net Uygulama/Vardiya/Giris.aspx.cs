using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;
namespace Vardiya
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            baglanti = new SqlConnection(baglanStr);
            baglanti.Open();
            string isci_adi = "select * from Isci_Bilgileri_Tbl where Kullanici_Adi=@kullanici_Adi and Kullanici_Sifre=@Kullanici_Sifre";
         //   and Kullanici_Sifre = '"+txtPass.Text+"'
            SqlCommand komut = new SqlCommand(isci_adi, baglanti);
            komut.Parameters.AddWithValue("@Kullanici_Adi", txtUser.Text);
            komut.Parameters.AddWithValue("@Kullanici_Sifre", txtPass.Text);

            SqlDataReader okunan = komut.ExecuteReader();

            string kadi = "admin";
            string parola = "admin";

            if (okunan.Read())
            {
                Session["Kullanici" ]= txtUser.Text;
                Session["Sifre"] = txtPass.Text;
                Response.Redirect("Kullanici_Anasayfa.aspx");

            }
            else if (txtUser.Text == kadi && txtPass.Text == parola)
            {
                Session["admin"] = "1";
                Response.Redirect("Admin_Sayfasi.aspx");
            } 
            else
            {
                Hata_Mesaji.Text = "Kullanıcı veya sifre yanlıs";
            }
            baglanti.Close();




        }
    }
}