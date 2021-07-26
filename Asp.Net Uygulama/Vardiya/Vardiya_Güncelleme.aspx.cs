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
    public partial class Vardiya_Güncelleme : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            


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
                cmd1.CommandText = "select Isci_Id from Isci_Bilgileri_Tbl where Adi+' ' +Soyadi='" + Vardiya_Isim.Items[i] + "'";

            }
            SqlDataReader dr1 = cmd1.ExecuteReader();

            while (dr1.Read())
            {
                TextBox2.Text=(dr1["Isci_Id"].ToString());
            }
            baglanti.Close();



           baglanti.Open();
            SqlCommand cmd2 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr = cmd2.ExecuteReader();


            while (dr.Read())
            {
                TextBox1.Text = dr["Gun_1"].ToString();
            }
            baglanti.Close();


            baglanti.Open();
            SqlCommand cmd3 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr3 = cmd3.ExecuteReader();


            while (dr3.Read())
            {
                TextBox3.Text = dr3["Gun_2"].ToString();
            }
            baglanti.Close();
            baglanti.Open();
            SqlCommand cmd4 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr4 = cmd4.ExecuteReader();


            while (dr4.Read())
            {
                TextBox4.Text = dr4["Gun_3"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd5 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr5 = cmd5.ExecuteReader();


            while (dr5.Read())
            {
                TextBox5.Text = dr5["Gun_4"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd6 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr6 = cmd6.ExecuteReader();


            while (dr6.Read())
            {
                TextBox6.Text = dr6["Gun_5"].ToString();
            }
            baglanti.Close();
            baglanti.Open();
            SqlCommand cmd7 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr7 = cmd7.ExecuteReader();


            while (dr7.Read())
            {
                TextBox7.Text = dr7["Gun_6"].ToString();
            }
            baglanti.Close();
            baglanti.Open();
            SqlCommand cmd8 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr8 = cmd8.ExecuteReader();


            while (dr8.Read())
            {
                TextBox8.Text = dr8["Gun_7"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd9 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr9 = cmd9.ExecuteReader();


            while (dr9.Read())
            {
                TextBox9.Text = dr9["Gun_8"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd10 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr10 = cmd10.ExecuteReader();


            while (dr10.Read())
            {
                TextBox10.Text = dr10["Gun_9"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd11 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr11 = cmd11.ExecuteReader();


            while (dr11.Read())
            {
                TextBox11.Text = dr11["Gun_10"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd12 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr12 = cmd12.ExecuteReader();


            while (dr12.Read())
            {
                TextBox12.Text = dr12["Gun_11"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd13 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr13 = cmd13.ExecuteReader();


            while (dr13.Read())
            {
                TextBox13.Text = dr13["Gun_12"].ToString();
            }
            baglanti.Close();
            baglanti.Open();
            SqlCommand cmd14 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr14 = cmd14.ExecuteReader();


            while (dr14.Read())
            {
                TextBox14.Text = dr14["Gun_13"].ToString();
            }
            baglanti.Close();
            baglanti.Open();
            SqlCommand cmd15 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr15 = cmd15.ExecuteReader();


            while (dr15.Read())
            {
                TextBox15.Text = dr15["Gun_14"].ToString();
            }
            baglanti.Close();
            baglanti.Open();
            SqlCommand cmd16 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr16 = cmd16.ExecuteReader();


            while (dr16.Read())
            {
                TextBox16.Text = dr16["Gun_15"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd17 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr17 = cmd17.ExecuteReader();
            while (dr17.Read())
            {
                TextBox17.Text = dr17["Gun_16"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd18 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr18 = cmd18.ExecuteReader();
            while (dr18.Read())
            {
                TextBox18.Text = dr18["Gun_17"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd19 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr19 = cmd19.ExecuteReader();
            while (dr19.Read())
            {
                TextBox19.Text = dr19["Gun_18"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd20 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr20 = cmd20.ExecuteReader();
            while (dr20.Read())
            {
                TextBox20.Text = dr20["Gun_19"].ToString();
            }
            baglanti.Close();
            baglanti.Open();
            SqlCommand cmd21 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr21 = cmd21.ExecuteReader();
            while (dr21.Read())
            {
                TextBox21.Text = dr21["Gun_20"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd22 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr22 = cmd22.ExecuteReader();
            while (dr22.Read())
            {
                TextBox22.Text = dr22["Gun_21"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd23 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr23 = cmd23.ExecuteReader();
            while (dr23.Read())
            {
                TextBox23.Text = dr23["Gun_22"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd24 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr24 = cmd24.ExecuteReader();
            while (dr24.Read())
            {
                TextBox24.Text = dr24["Gun_23"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd25 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr25 = cmd25.ExecuteReader();
            while (dr25.Read())
            {
                TextBox25.Text = dr25["Gun_24"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd26 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr26 = cmd26.ExecuteReader();
            while (dr26.Read())
            {
                TextBox26.Text = dr26["Gun_25"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd27 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr27 = cmd27.ExecuteReader();
            while (dr27.Read())
            {
                TextBox27.Text = dr27["Gun_26"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd28 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr28 = cmd28.ExecuteReader();
            while (dr28.Read())
            {
                TextBox28.Text = dr28["Gun_27"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd29 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr29 = cmd29.ExecuteReader();
            while (dr29.Read())
            {
                TextBox29.Text = dr29["Gun_28"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd30 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr30 = cmd30.ExecuteReader();
            while (dr30.Read())
            {
                TextBox30.Text = dr30["Gun_29"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd31 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr31= cmd31.ExecuteReader();
            while (dr31.Read())
            {
                TextBox31.Text = dr31["Gun_30"].ToString();
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand cmd32 = new SqlCommand("Select * From Vardiya_Tbl where Isci_Id='" + TextBox2.Text + "' and Ay_Adi='" + Ay_List.Text + "' and Yil_Adi='" + Yil_List.Text + "'", baglanti);
            SqlDataReader dr32 = cmd32.ExecuteReader();
            while (dr32.Read())
            {
                TextBox32.Text = dr32["Gun_31"].ToString();
            }
            baglanti.Close();
        }
      
        protected void Geri_Aktar_Btn_Click(object sender, EventArgs e)
        {
          Isim_Getir.Items.Add(Vardiya_Isim.SelectedItem);



            baglanti = new SqlConnection(baglanStr);

            baglanti.Open();
            SqlCommand cmd1 = new SqlCommand("select * from Isci_Bilgileri_Tbl where Adi+' ' +Soyadi='" + Vardiya_Isim.SelectedItem + "'", baglanti);
            SqlDataReader dr = cmd1.ExecuteReader();


            while (dr.Read())
            {
                Id_Txt.Text = dr["Isci_Id"].ToString();
            }
            

            Vardiya_Isim.Items.Remove(Vardiya_Isim.SelectedItem);
            TextBox2.Text = " ";

            TextBox1.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            TextBox8.Text = " ";
            TextBox9.Text = " ";
            TextBox10.Text = " ";
            TextBox11.Text = " ";
            TextBox12.Text = " ";
            TextBox13.Text = " ";
            TextBox14.Text = " ";
            TextBox15.Text = " ";
            TextBox16.Text = " ";
            TextBox17.Text = " ";
            TextBox18.Text = " ";
            TextBox19.Text = " ";
            TextBox20.Text = " ";
            TextBox21.Text = " ";
            TextBox22.Text = " ";
            TextBox23.Text = " ";
            TextBox24.Text = " ";
            TextBox25.Text = " ";
            TextBox26.Text = " ";
            TextBox27.Text = " ";
            TextBox28.Text = " ";
            TextBox29.Text = " ";
            TextBox30.Text = " ";
            TextBox31.Text = " ";
            TextBox32.Text = " ";
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
        }

        protected void Vardiya_Kaydet_Btn_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

           
        }

        protected void Vardiya_Guncelle_Btn_Click(object sender, EventArgs e)
        {
            baglanti = new SqlConnection(baglanStr);

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Update Vardiya_Tbl Set Gun_1=@Gun_1,Gun_2=@Gun_2,Gun_3=@Gun_3,Gun_4=@Gun_4,Gun_5=@Gun_5,Gun_6=@Gun_6,Gun_7=@Gun_7,Gun_8=@Gun_8,Gun_9=@Gun_9,Gun_10=@Gun_10,Gun_11=@Gun_11,Gun_12=@Gun_12,Gun_13=@Gun_13,Gun_14=@Gun_14,Gun_15=@Gun_15,Gun_16=@Gun_16,Gun_17=@Gun_17,Gun_18=@Gun_18,Gun_19=@Gun_19,Gun_20=@Gun_21,Gun_21=@Gun_21,Gun_22=@Gun_22,Gun_23=@Gun_23,Gun_24=@Gun_24,Gun_25=@Gun_25,Gun_26=@Gun_26,Gun_27=@Gun_27,Gun_28=@Gun_28,Gun_29=@Gun_29,Gun_30=@Gun_30,Gun_31=@Gun_31 where Isci_Id=@Isci_Id",baglanti);
            komut.Parameters.AddWithValue("Gun_1", DropDownList3.Text);
            komut.Parameters.AddWithValue("Gun_2", DropDownList4.Text);
            komut.Parameters.AddWithValue("Gun_3", DropDownList5.Text);
            komut.Parameters.AddWithValue("Gun_4", DropDownList6.Text);
            komut.Parameters.AddWithValue("Gun_5", DropDownList7.Text);
            komut.Parameters.AddWithValue("Gun_6", DropDownList8.Text);
            komut.Parameters.AddWithValue("Gun_7", DropDownList9.Text);
            komut.Parameters.AddWithValue("Gun_8", DropDownList10.Text);
            komut.Parameters.AddWithValue("Gun_9", DropDownList11.Text);
            komut.Parameters.AddWithValue("Gun_10", DropDownList12.Text);
            komut.Parameters.AddWithValue("Gun_11", DropDownList13.Text);
            komut.Parameters.AddWithValue("Gun_12", DropDownList14.Text);
            komut.Parameters.AddWithValue("Gun_13", DropDownList15.Text);
            komut.Parameters.AddWithValue("Gun_14", DropDownList16.Text);
            komut.Parameters.AddWithValue("Gun_15", DropDownList17.Text);
            komut.Parameters.AddWithValue("Gun_16", DropDownList18.Text);
            komut.Parameters.AddWithValue("Gun_17", DropDownList19.Text);
            komut.Parameters.AddWithValue("Gun_18", DropDownList20.Text);
            komut.Parameters.AddWithValue("Gun_19", DropDownList21.Text);
            komut.Parameters.AddWithValue("Gun_20", DropDownList22.Text);
            komut.Parameters.AddWithValue("Gun_21", DropDownList23.Text);
            komut.Parameters.AddWithValue("Gun_22", DropDownList24.Text);
            komut.Parameters.AddWithValue("Gun_23", DropDownList25.Text);
            komut.Parameters.AddWithValue("Gun_24", DropDownList26.Text);
            komut.Parameters.AddWithValue("Gun_25", DropDownList27.Text);
            komut.Parameters.AddWithValue("Gun_26", DropDownList28.Text);
            komut.Parameters.AddWithValue("Gun_27", DropDownList29.Text);
            komut.Parameters.AddWithValue("Gun_28", DropDownList30.Text);
            komut.Parameters.AddWithValue("Gun_29", DropDownList31.Text);
            komut.Parameters.AddWithValue("Gun_30", DropDownList32.Text);
            komut.Parameters.AddWithValue("Gun_31", DropDownList33.Text);

            komut.Parameters.AddWithValue("Isci_Id", TextBox2.Text);

            komut.ExecuteNonQuery();
            baglanti.Close();

            TextBox1.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            TextBox8.Text = " ";
            TextBox9.Text = " ";
            TextBox10.Text = " ";
            TextBox11.Text = " ";
            TextBox12.Text = " ";
            TextBox13.Text = " ";
            TextBox14.Text = " ";
            TextBox15.Text = " ";
            TextBox16.Text = " ";
            TextBox17.Text = " ";
            TextBox18.Text = " ";
            TextBox19.Text = " ";
            TextBox20.Text = " ";
            TextBox21.Text = " ";
            TextBox22.Text = " ";
            TextBox23.Text = " ";
            TextBox24.Text = " ";
            TextBox25.Text = " ";
            TextBox26.Text = " ";
            TextBox27.Text = " ";
            TextBox28.Text = " ";
            TextBox29.Text = " ";
            TextBox30.Text = " ";
            TextBox31.Text = " ";
            TextBox32.Text = " ";


        }
    }
}

