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
    public partial class Mesai_Kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        protected void Isim_Getir_Click(object sender, EventArgs e)
        {
            baglanti = new SqlConnection(baglanStr);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = baglanti;
            cmd.CommandText = "select Adi+' '+Soyadi as Isci from Isci_Bilgileri_Tbl where Etkinlik_Durumu='Aktif' and Unite_Adi='" + Unite_List.SelectedItem.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                Isim_List.Items.Add(dr["Isci"].ToString());
            }
            baglanti.Close();
        }

        protected void Unite_List_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Isim_List.Items.Clear();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Isim_List_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void Kaydet_Btn_Click(object sender, EventArgs e)
        {

            baglanti = new SqlConnection(baglanStr);



            baglanti.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = baglanti;
            cmd1.CommandText = "select Isci_Id from Isci_Bilgileri_Tbl where Adi+' ' +Soyadi='" + Isim_List.SelectedValue + "'";


            SqlDataReader dr1 = cmd1.ExecuteReader();

            while (dr1.Read())
            {
                Isci_Id_Tut.Text = (dr1["Isci_Id"].ToString());
            }
            baglanti.Close();

          

            baglanti.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = baglanti;
            cmd.CommandText = "select Isci_Id,Yil_Adi,Ay_Adi,Gun_Adi from Mesai_Tbl where Isci_Id='" + Isci_Id_Tut.Text+ "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Ay_Adi='" + Ay_List.SelectedItem + "' and Gun_Adi='"+Gun_List.SelectedItem.ToString()+"'";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label8.Text = "Kayit var";

            }
            baglanti.Close();

           

            if (Label8.Text == "Kayit var")
            {
                Label8.Text = "Önceden bu yıl ve tarihte kayıt yapılmıştır.";

            }
            else
            {
                GridView2.Visible = false;
                baglanti.Open();

                string mesai_kayit = "insert into Mesai_Tbl(Isci_Id,Yil_Adi,Ay_Adi,Gun_Adi,Mesai_Saati)" + "values" + "('" + Isci_Id_Tut.Text.ToString() + "','" + Yil_List.Text.ToString() + "','" + Ay_List.Text.ToString() + "','" + Gun_List.Text.ToString() + "','" + Mesai_list.Text.ToString() + "')";
                SqlCommand komut = new SqlCommand(mesai_kayit, baglanti);
                komut.ExecuteNonQuery();

                string komut1 = " select Mesai_Id as ' Mesai ID ',Isci_Id as ' İşçi ID ',Yil_Adi as ' Yıl ',Ay_Adi as ' Ay ',Gun_Adi as ' Gün ',Mesai_Saati as ' Mesai Saati ' from Mesai_Tbl where Yil_Adi='" + Yil_List.Text + "' and Ay_Adi='" + Ay_List.Text + "'";
                SqlDataAdapter adaptor1 = new SqlDataAdapter(komut1, baglanti);
                DataTable table1 = new DataTable();
                adaptor1.Fill(table1);
                GridView1.DataSource = table1;
                GridView1.DataBind();

                baglanti.Close();
                Label7.Text = "veri tabanına mesai kayıt edilmiştir.";
            }
            Isci_Id_Tut.Text = "  ";



            
           
        }

    }
}