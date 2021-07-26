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
    public partial class Vardiya_Kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = "";
        }
        SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        protected void Aktar_Btn_Click(object sender, EventArgs e)
        {
            Vardiya_Isim.Items.Add(Isim_Getir.SelectedItem);
            Isim_Getir.Items.Remove(Isim_Getir.SelectedItem);

            baglanti = new SqlConnection(baglanStr);

            baglanti.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = baglanti;
             for (int i = 0; i < Vardiya_Isim.Items.Count; i++)
             {
                 cmd1.CommandText = "select Isci_Id from Isci_Bilgileri_Tbl where Adi+' ' +Soyadi='"+Vardiya_Isim.Items[i]+"'";
                
             }
            SqlDataReader dr1 = cmd1.ExecuteReader();

            while (dr1.Read())
            {
                Isci_Id_Tut.Items.Add(dr1["Isci_Id"].ToString());
            }
            baglanti.Close();
        }

        protected void Olustur_Btn_Click(object sender, EventArgs e)
        {
            baglanti = new SqlConnection(baglanStr);
            baglanti.Open();
            int kayitsayisi;

            SqlCommand komut = new SqlCommand("select count(Adi) from Isci_Bilgileri_Tbl where Etkinlik_Durumu='Aktif' and Unite_Adi='" + Unite_List.SelectedItem.Text + "'", baglanti);
            kayitsayisi = Convert.ToInt32(komut.ExecuteScalar());
            Label5.Text = kayitsayisi.ToString();
            baglanti.Close();


            baglanti.Open();
            SqlCommand cmd = new SqlCommand();
           
            cmd.Connection = baglanti;
            cmd.CommandText = "select Adi+' '+Soyadi as Isci from Isci_Bilgileri_Tbl where Etkinlik_Durumu='Aktif' and Unite_Adi='" + Unite_List.SelectedItem.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                Isim_Getir.Items.Add(dr["Isci"].ToString());
            }
            baglanti.Close();


         /*   baglanti.Open();
            SqlCommand cmd1 = new SqlCommand();
            // kayit_sayisi.ToString();
            cmd1.Connection = baglanti;
            cmd1.CommandText = "select Isci_Id from Isci_Bilgileri_Tbl where Etkinlik_Durumu='Aktif' and Unite_Adi='" + Unite_List.SelectedItem.Text + "'";
            SqlDataReader dr1 = cmd1.ExecuteReader();

            while (dr1.Read())
            {
                Isci_Id_Tut.Items.Add(dr1["Isci_Id"].ToString());
            }
            baglanti.Close();*/
        }

        Boolean arama;
        protected void Geri_Aktar_Btn_Click(object sender, EventArgs e)
        {
            Isim_Getir.Items.Add(Vardiya_Isim.SelectedItem);



            baglanti = new SqlConnection(baglanStr);

            baglanti.Open();
              SqlCommand cmd1 = new SqlCommand( "select * from Isci_Bilgileri_Tbl where Adi+' ' +Soyadi='" + Vardiya_Isim.SelectedItem + "'",baglanti);
            SqlDataReader dr = cmd1.ExecuteReader();
            
             
            while (dr.Read())
             {
                 Id_Txt.Text = dr["Isci_Id"].ToString();
             }
          
            for (int i=0;i<Isci_Id_Tut.Items.Count;i++)
            {

                if (Id_Txt.Text == Isci_Id_Tut.Items[i].ToString())
                {
                    arama = true;
                    Isci_Id_Tut.Items.Remove(Id_Txt.Text);
                    Id_Txt.Text = " ";
                }
                else { arama = false; }
            }

            Vardiya_Isim.Items.Remove(Vardiya_Isim.SelectedItem);
          


        }

        protected void Vardiya_Kaydet_Btn_Click(object sender, EventArgs e)
        {
         
            baglanti = new SqlConnection(baglanStr);

            baglanti.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = baglanti;
            for (int i = 0; i < Isci_Id_Tut.Items.Count; i++)
            {
                cmd.CommandText = "select Isci_Id,Yil_Adi,Ay_Adi from Vardiya_Tbl where Isci_Id='" + Isci_Id_Tut.Items[i] + "' and Yil_Adi='"+Yil_List.SelectedItem+"' and Ay_Adi='"+Ay_List.SelectedItem+"'";
            }
           
           SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label6.Text = "Kayit var";

            }
            baglanti.Close();
            if (Label6.Text == "Kayit var")
            {
                Label6.Text = "Önceden bu yıl ve tarihte kayıt yapılmıştır.";

            }
            else
            {
                baglanti.Open();

                for (int i = 0; i < Vardiya_Isim.Items.Count; i++)
                {

                    string vardiya_kayit = "insert into Vardiya_Tbl(Isci_Id,Yil_Adi,Ay_Adi,Gun_1,Gun_2,Gun_3,Gun_4,Gun_5,Gun_6,Gun_7,Gun_8,Gun_9,Gun_10,Gun_11,Gun_12,Gun_13,Gun_14,Gun_15,Gun_16,Gun_17,Gun_18,Gun_19,Gun_20,Gun_21,Gun_22,Gun_23,Gun_24,Gun_25,Gun_26,Gun_27,Gun_28,Gun_29,Gun_30,Gun_31)"
                    + "values" + "('" + Isci_Id_Tut.Items[i].ToString() + "','" + Yil_List.Text.ToString() + "','" + Ay_List.Text.ToString() + "','" + DropDownList3.Text.ToString() + "','" + DropDownList4.Text.ToString() + "','" + DropDownList5.Text.ToString() + "','" + DropDownList6.Text.ToString() + "','" + DropDownList7.Text.ToString() + "','" + DropDownList8.Text.ToString() + "','" + DropDownList9.Text.ToString() + "','" + DropDownList10.Text.ToString() + "','" +
                          DropDownList11.Text.ToString() + "','" + DropDownList12.Text.ToString() + "','" + DropDownList13.Text.ToString() + "','" + DropDownList14.Text.ToString() + "','" + DropDownList15.Text.ToString() + "','" + DropDownList16.Text.ToString() + "','" + DropDownList17.Text.ToString() + "','" + DropDownList18.Text.ToString() + "','" + DropDownList19.Text.ToString() + "','" + DropDownList20.Text.ToString() + "','" +
                           DropDownList21.Text.ToString() + "','" + DropDownList22.Text.ToString() + "','" + DropDownList23.Text.ToString() + "','" + DropDownList24.Text.ToString() + "','" + DropDownList25.Text.ToString() + "','" + DropDownList26.Text.ToString() + "','" + DropDownList27.Text.ToString() + "','" + DropDownList28.Text.ToString() + "','" + DropDownList29.Text.ToString() + "','" + DropDownList30.Text.ToString() + "','" +
                           DropDownList31.Text.ToString() + "','" + DropDownList32.Text.ToString() + "','" + DropDownList33.Text.ToString() + "')";
                    SqlCommand komut = new SqlCommand(vardiya_kayit, baglanti);
                    komut.ExecuteNonQuery();
                   
                }
                baglanti.Close();
            }
            baglanti.Close();
        }
    }
}