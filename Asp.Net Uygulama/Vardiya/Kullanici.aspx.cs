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
    public partial class Kullanici1 : System.Web.UI.Page
    {

        SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti = new SqlConnection(baglanStr);
            baglanti.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = baglanti;
            cmd1.CommandText = "select Isci_Id from Isci_Bilgileri_Tbl where Kullanici_Adi='" + Session["Kullanici"] + "' and Kullanici_Sifre='"+Session["Sifre"]+"'";

            
            SqlDataReader dr1 = cmd1.ExecuteReader();

            while (dr1.Read())
            {
                Label1.Text=dr1["Isci_Id"].ToString();
            }
            baglanti.Close();


            baglanti.Open();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = baglanti;
            cmd2.CommandText = "select Adi+' '+Soyadi as Isci from Isci_Bilgileri_Tbl where Isci_Id='"+Label1.Text+"'";


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
        }

        protected void Goruntule_Btn_Click(object sender, EventArgs e)
        {

            baglanti = new SqlConnection(baglanStr);
            string komut = " select Gun_1 as ' 1 ',Gun_2 as ' 2 ',Gun_3 as ' 3 ',Gun_4 as ' 4 ',Gun_5 as ' 5 ',Gun_6 as ' 6 ',Gun_7 as ' 7 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Ay_Adi='" + Ay_List.SelectedItem +"'";
            SqlDataAdapter adaptor = new SqlDataAdapter(komut, baglanti);
            DataTable table = new DataTable();
            adaptor.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();


            baglanti = new SqlConnection(baglanStr);
            string komut1 = " select Gun_8 as ' 8 ',Gun_9 as ' 9 ',Gun_10 as ' 10 ',Gun_11 as ' 11 ',Gun_12 as ' 12 ',Gun_13 as ' 13 ',Gun_14 as ' 14 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Ay_Adi='" + Ay_List.SelectedItem + "'";
            SqlDataAdapter adaptor1 = new SqlDataAdapter(komut1, baglanti);
            DataTable table1 = new DataTable();
            adaptor1.Fill(table1);
            GridView2.DataSource = table1;
            GridView2.DataBind();
            baglanti = new SqlConnection(baglanStr);

            string komut2 = " select Gun_15 as ' 15 ',Gun_16 as ' 16 ',Gun_17 as ' 17 ',Gun_18 as ' 18 ',Gun_19 as ' 19 ',Gun_20 as ' 20 ',Gun_21 as ' 21 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Ay_Adi='" + Ay_List.SelectedItem + "'";
            SqlDataAdapter adaptor2 = new SqlDataAdapter(komut2, baglanti);
            DataTable table2 = new DataTable();
            adaptor2.Fill(table2);
            GridView3.DataSource = table2;
            GridView3.DataBind();

            baglanti = new SqlConnection(baglanStr);
            string komut3 = " select Gun_22 as ' 22 ',Gun_23 as ' 23 ',Gun_24 as ' 24 ',Gun_25 as ' 25 ',Gun_26 as ' 26 ',Gun_27 as ' 27 ',Gun_28 as ' 28 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Ay_Adi='" + Ay_List.SelectedItem + "'";
            SqlDataAdapter adaptor3 = new SqlDataAdapter(komut3, baglanti);
            DataTable table3 = new DataTable();
            adaptor3.Fill(table3);
            GridView4.DataSource = table3;
            GridView4.DataBind();

            baglanti = new SqlConnection(baglanStr);
            string komut4 = " select Gun_29 as ' 29 ',Gun_30 as ' 30 ',Gun_31 as ' 31 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Ay_Adi='" + Ay_List.SelectedItem + "'";
            SqlDataAdapter adaptor4 = new SqlDataAdapter(komut4, baglanti);
            DataTable table4 = new DataTable();
            adaptor4.Fill(table4);
            GridView5.DataSource = table4;
            GridView5.DataBind();
        }
    }
    }
