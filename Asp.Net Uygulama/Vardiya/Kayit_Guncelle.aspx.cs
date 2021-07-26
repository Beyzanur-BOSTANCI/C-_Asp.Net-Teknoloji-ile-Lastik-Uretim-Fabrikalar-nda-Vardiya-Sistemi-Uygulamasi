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
    public partial class Kayit_Guncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        
        protected void kaydet_btn_Click(object sender, EventArgs e)
        {
            baglanti = new SqlConnection(baglanStr);

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Update Isci_Bilgileri_Tbl Set Medeni_Durum=@Medeni_Durum, Adres=@Adres, Telefon=@Telefon, EPosta=@EPosta, Unvan_Adi=@Unvan_Adi, Unite_Adi=@Unite_Adi, Hastalik_Durumu=@Hastalik_Durumu, Aciklama=@Aciklama, En_Fazla_Calisma_Saati=@En_Fazla_Calisma_Saati, Kullanici_Adi=@Kullanici_Adi, Kullanici_Sifre=@Kullanici_Sifre, Etkinlik_Durumu=@Etkinlik_Durumu where TC=@TC", baglanti);
            komut.Parameters.AddWithValue("Medeni_Durum", Medeni_Durum_Txt.Text);
            komut.Parameters.AddWithValue("Adres", Adres_Txt.Text);
            komut.Parameters.AddWithValue("Telefon", Tel_Txt.Text);
            komut.Parameters.AddWithValue("EPosta", Eposta_Txt.Text);
            komut.Parameters.AddWithValue("Unvan_Adi", Unvan_Adi.Text);
            komut.Parameters.AddWithValue("Unite_Adi", Unite_Txt.Text);
            komut.Parameters.AddWithValue("Hastalik_Durumu", Hastalik_Txt.Text);
            komut.Parameters.AddWithValue("Aciklama", Aciklama_Txt.Text);
            komut.Parameters.AddWithValue("En_Fazla_Calisma_Saati", Calisma_Saati_Txt.Text);
            komut.Parameters.AddWithValue("Kullanici_Adi", Kullanici_Adi_Txt.Text);
            komut.Parameters.AddWithValue("Kullanici_Sifre", Kullanici_Sifre_Txt.Text);
            komut.Parameters.AddWithValue("Etkinlik_Durumu", Etkinlik_Txt.Text);

            komut.Parameters.AddWithValue("TC", TC_Txt.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();

            Ileti.Text = "Kayıt Güncellenmiştir.";

            TC_Txt.Text = " ";
            Ad_Txt.Text = " ";
            Soyad_Txt.Text = " ";
            Dogum_Tarihi_Txt.Text = " ";
            Medeni_Durum_Txt.Text = " ";
            Adres_Txt.Text = " ";
            Tel_Txt.Text = " ";
            Eposta_Txt.Text = " ";
            Unvan_Adi.Text = " ";
            Unite_Txt.Text = " ";
            Kan_Grubu_Txt.Text = " ";
            Hastalik_Txt.Text = " ";
            Aciklama_Txt.Text = " ";
            Calisma_Saati_Txt.Text = " ";
            Kullanici_Adi_Txt.Text = " ";
            Kullanici_Sifre_Txt.Text = " ";
            Etkinlik_Txt.Text = " ";

            
        }

        protected void Ara_Btn_Click(object sender, EventArgs e)
        {
            baglanti = new SqlConnection(baglanStr);

            baglanti.Open();
            SqlCommand cmd2 = new SqlCommand("Select * From Isci_Bilgileri_Tbl where TC='" + TC_Txt.Text + "'", baglanti);
            SqlDataReader dr = cmd2.ExecuteReader();


            while (dr.Read())
            {
                Ad_Txt.Text = dr["Adi"].ToString();
                Soyad_Txt.Text = dr["Soyadi"].ToString();
                Dogum_Tarihi_Txt.Text = dr["Dogum_Tarihi"].ToString();
                Medeni_Durum_Txt.Text = dr["Medeni_Durum"].ToString();
                Adres_Txt.Text = dr["Adres"].ToString();
                Tel_Txt.Text = dr["Telefon"].ToString();
                Eposta_Txt.Text = dr["EPosta"].ToString();
                Unvan_Adi.Text = dr["Unvan_Adi"].ToString();
                Unite_Txt.Text = dr["Unite_Adi"].ToString();
                Kan_Grubu_Txt.Text = dr["Kan_Grubu"].ToString();
                Hastalik_Txt.Text = dr["Hastalik_Durumu"].ToString();
                Aciklama_Txt.Text = dr["Aciklama"].ToString();
                Calisma_Saati_Txt.Text = dr["En_Fazla_Calisma_Saati"].ToString();
                Kullanici_Adi_Txt.Text = dr["Kullanici_Adi"].ToString();
                Kullanici_Sifre_Txt.Text = dr["Kullanici_Sifre"].ToString();
                Etkinlik_Txt.Text = dr["Etkinlik_Durumu"].ToString();
            }
            baglanti.Close();
        }
    }
}