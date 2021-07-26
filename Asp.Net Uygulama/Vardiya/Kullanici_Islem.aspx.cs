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
    public partial class Kullanici_Islem : System.Web.UI.Page
    {
        SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti = new SqlConnection(baglanStr);

            baglanti.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = baglanti;
            cmd1.CommandText = "select Isci_Id from Isci_Bilgileri_Tbl where Kullanici_Adi='" + Session["Kullanici"] + "' and Kullanici_Sifre='" + Session["Sifre"] + "'";


            SqlDataReader dr1 = cmd1.ExecuteReader();

            while (dr1.Read())
            {
                Label1.Text = dr1["Isci_Id"].ToString();
            }
            baglanti.Close();


            baglanti.Open();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = baglanti;
            cmd2.CommandText = "select Adi+' '+Soyadi as Isci from Isci_Bilgileri_Tbl where Isci_Id='" + Label1.Text + "'";


            SqlDataReader dr2 = cmd2.ExecuteReader();

            while (dr2.Read())
            {
                Isim_Lbl.Text = dr2["Isci"].ToString();
            }
            baglanti.Close();


            baglanti.Open();
            SqlCommand cmd3 = new SqlCommand();
            cmd3.Connection = baglanti;
            cmd3.CommandText = "select Unite_Adi from Isci_Bilgileri_Tbl where Isci_Id='" + Label1.Text + "'";


            SqlDataReader dr3 = cmd3.ExecuteReader();

            while (dr3.Read())
            {
                Unite_Lbl.Text = dr3["Unite_Adi"].ToString();
            }
            baglanti.Close();


            baglanti.Open();
            SqlCommand cmd4 = new SqlCommand();
            cmd4.Connection = baglanti;
            cmd4.CommandText = "select * from Isci_Bilgileri_Tbl where Kullanici_Adi='" + Session["Kullanici"] + "' and Kullanici_Sifre='" + Session["Sifre"] + "'";


            SqlDataReader dr4 = cmd4.ExecuteReader();

            while (dr4.Read())
            {
                Label3.Text = dr4["Kullanici_Adi"].ToString();
            }
            baglanti.Close();
        }

        protected void Degis_Btn_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand cmd4 = new SqlCommand();
            cmd4.Connection = baglanti;
            cmd4.CommandText = "select * from Isci_Bilgileri_Tbl where Kullanici_Adi='" + Session["Kullanici"] + "' and Kullanici_Sifre='" + Session["Sifre"] + "'";


            SqlDataReader dr4 = cmd4.ExecuteReader();

            while (dr4.Read())
            {
                Label8.Text = dr4["Kullanici_Sifre"].ToString();
            }
            baglanti.Close();

            if (Label8.Text == TextBox1.Text)
            {
                if(TextBox2.Text==TextBox3.Text)
                {
                    baglanti = new SqlConnection(baglanStr);

                    baglanti.Open();
                    SqlCommand komut = new SqlCommand("Update Isci_Bilgileri_Tbl Set Kullanici_Sifre=@Kullanici_Sifre where Isci_Id=@Isci_Id", baglanti);

                    komut.Parameters.AddWithValue("@Kullanici_Sifre", TextBox3.Text);

                    komut.Parameters.AddWithValue("@Isci_Id", Label1.Text);

                    komut.ExecuteNonQuery();
                    baglanti.Close();
                    Label9.Text = "Şifreniz Başarıyla Değiştirilmiştir!";
                }
                else
                {
                    Label9.Text = "Yeni Şifreniz Uyuşmamaktadır!";
                }
            
            }
            else
            {
                Label9.Text = "Eski Şifrenizi Yanlış Girdiniz!";
            }
        }
    }
}