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
    public partial class Kayit_Ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        protected void kaydet_btn_Click(object sender, EventArgs e)
        {
            baglanti = new SqlConnection(baglanStr);
            /*  //Veri kaydetmek için SQL komutumu yazıyorum, verim Calisanlar tablosuna kaydedilecek.
              komut = new SqlCommand("INSERT INTO Isci_Tbl,Saglik_Durumu_Tbl (Isci_Tbl.TC,Isci_Tbl.Adi,Isci_Tbl.Soyadi,Isci_Tbl.Dogum_Tarihi,Isci_Tbl.Medeni_Durum,Isci_Tbl.Adres,Isci_Tbl.Tel,Isci_Tbl.Email,Isci_Tbl.Kullanici_Adi,Isci_Tbl.Kullanici_Sifre,Isci_Tbl.Unvan_Id,Saglik_Durumu_Tbl.Kan_Grubu,Saglik_Durumu_Tbl.Hastalik_Durumu,Saglik_Durumu_Tbl.En_Fazla_Calisma_Saati,Isci_Tbl.Tarih_Id) VALUES (@Isci_Tbl.TC,@Isci_Tbl.Adi,@Isci_Tbl.Soyadi,@Isci_Tbl.Dogum_Tarihi,@Isci_Tbl.Medeni_Durum,@Isci_Tbl.Adres,@Isci_Tbl.Tel,@Isci_Tbl.Email,@Isci_Tbl.Kullanici_Adi,@Isci_Tbl.Kullanici_Sifre,@Isci_Tbl.Unvan_Id,@Saglik_Durumu_Tbl.Kan_Grubu,@Saglik_Durumu_Tbl.Hastalik_Durumu,@Saglik_Durumu_Tbl.En_Fazla_Calisma_Saati,@Isci_Tbl.Tarih_Id) where Isci_Tbl.Saglik_Durumu_Id=Saglik_Durumu_Tbl.Saglik_Durumu_Id", baglanti);
              //Her bir alan için parametremin tipini belirtiyor ve bu parametrenin hangi alandan alınacağını gösteriyorum.
              komut.Parameters.AddWithValue("@Isci_Tbl.TC" , TC_Txt.Text);
              komut.Parameters.AddWithValue("@Isci_Tbl.Adi", Ad_Txt.Text);

              komut.Parameters.AddWithValue("@Isci_Tbl.Soyadi",Soyad_Txt.Text);
              komut.Parameters.AddWithValue("@Isci_Tbl.Dogum_Tarihi", Dogum_Tarihi_Txt.Text);
              komut.Parameters.AddWithValue("@Isci_Tbl.Medeni_Durum",MedeniDurum_List.SelectedItem.Text);
              komut.Parameters.AddWithValue("@Isci_Tbl.Adres", Adres_Txt.Text);
              komut.Parameters.AddWithValue("@Isci_Tbl.Tel", Tel_Txt.Text);       
              komut.Parameters.AddWithValue("@Isci_Tbl.Email",Eposta_Txt.Text);
              komut.Parameters.AddWithValue("@Isci_Tbl.Unvan_Id", Unvan_List.SelectedValue);        
              komut.Parameters.AddWithValue("@Saglik_Durumu_Tbl.Kan_Grubu",Kan_Grubu_List.SelectedItem.Text);          
              komut.Parameters.AddWithValue("@Saglik_Durumu_Tbl.Hastalik_Durumu", Hastalik_Gec_List.SelectedItem.Text);
              komut.Parameters.AddWithValue("@Saglik_Durumu_Tbl.Aciklama",Aciklama_Txt.Text);
              komut.Parameters.AddWithValue("@Saglik_Durumu_Tbl.En_Fazla_Calisma_Saati", Calisma_Saati_Txt.Text);
              komut.Parameters.AddWithValue("@Isci_Tbl.Kullanici_Adi",Kullanici_Adi_Txt.Text);
              komut.Parameters.AddWithValue("@Isci_Tbl.Kullanici_Sifre", Kullanici_Sifre_Txt.Text);
              komut.Parameters.AddWithValue("@Isci_Tbl.Tarih_Id",DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));

              try { 
              baglanti.Open();
              komut.ExecuteNonQuery();
              Response.Redirect("http://google.com.tr");
              }
              catch
              {
                  Label1.Text = "Hatalı Kayıt";
              }
              finally
              {
                  baglanti.Close();
              }
              

             Label32.Text = "Giris basarılı";*/
            string Etkinlik_Durumu = "Aktif";
            baglanti.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = baglanti;
            cmd.CommandText = "select TC from Isci_Bilgileri_Tbl where TC='" + TC_Txt.Text +  "'";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Ileti.Text = "Kayit var";

            }
            baglanti.Close();
            if (Ileti.Text == "Kayit var")
            {
                Ileti.Text = "Önceden bu TC kimlik numaralı bir kişi kayıt edilmiştir.";

            }
            else
            {
                baglanti.Open();
                string kayit = "insert into Isci_Bilgileri_Tbl(TC,Adi,Soyadi,Dogum_Tarihi,Medeni_Durum,Adres,Telefon,EPosta,Unvan_Adi,Unite_Adi,Kan_Grubu,Hastalik_Durumu,Aciklama,En_Fazla_Calisma_Saati,Kullanici_Adi,Kullanici_Sifre,Kayit_Tarihi,Etkinlik_Durumu)"
            + "values" + "('" + TC_Txt.Text.ToString() + "','" + Ad_Txt.Text.ToString() + "','" + Soyad_Txt.Text.ToString() + "','" + Dogum_Tarihi_Txt.Text.ToString() + "','" + MedeniDurum_List.Text.ToString() + "','" + Adres_Txt.Text.ToString() + "','" + Tel_Txt.Text.ToString() + "','" + Eposta_Txt.Text.ToString() + "','" + Unvan_List.Text.ToString() + "','" + Unite_List.Text.ToString() + "','" + Kan_Grubu_List.Text.ToString() + "','" + Hastalik_Gec_List.Text.ToString() + "','" + Aciklama_Txt.Text.ToString() + "','" + Calisma_Saati_Txt.Text.ToString() + "','" + Kullanici_Adi_Txt.Text.ToString() + "','" + Kullanici_Sifre_Txt.Text.ToString() + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + Etkinlik_Durumu + "')";

                SqlCommand komut = new SqlCommand(kayit, baglanti);
                komut.ExecuteNonQuery();
                baglanti.Close();
                Ileti.Text = "veri tabanına kayıt edildi.";
            }

            TC_Txt.Text = " ";
            Ad_Txt.Text = " ";
            Soyad_Txt.Text = " ";
            Dogum_Tarihi_Txt.Text = " ";
            Adres_Txt.Text = " ";
            Tel_Txt.Text = " ";
            Eposta_Txt.Text = " ";
            Aciklama_Txt.Text = " ";
            Calisma_Saati_Txt.Text = " ";
            Kullanici_Adi_Txt.Text = " ";
            Kullanici_Sifre_Txt.Text = " ";
        }
    }
}