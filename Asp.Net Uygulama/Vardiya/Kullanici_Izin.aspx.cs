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
    public partial class Kullanici_Izin : System.Web.UI.Page
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
        }

        protected void Izin_Btn_Click(object sender, EventArgs e)
        {
            Label7.Visible = true;
            baglanti = new SqlConnection(baglanStr);

            int toplam=0;
            
              string komut1 = " select Ay_Adi as ' Ay ',Gun_1 as ' 1 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_1='" + Izin_List.SelectedItem + "'";
                   SqlDataAdapter adaptor1 = new SqlDataAdapter(komut1, baglanti);
                   DataTable table1 = new DataTable();
                   adaptor1.Fill(table1);
                   GridView1.DataSource = table1;
                   GridView1.DataBind();
                   toplam+=Convert.ToInt32(table1.Rows.Count.ToString());


            string komut2 = " select Ay_Adi as ' Ay ',Gun_2 as ' 2 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_2='" + Izin_List.SelectedItem + "'";
               SqlDataAdapter adaptor2 = new SqlDataAdapter(komut2, baglanti);
               DataTable table2 = new DataTable();
               adaptor2.Fill(table2);
               GridView2.DataSource = table2;
               GridView2.DataBind();
            toplam += Convert.ToInt32(table2.Rows.Count.ToString());

            string komut3 = " select Ay_Adi as ' Ay ',Gun_3 as ' 3 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_3='" + Izin_List.SelectedItem + "'";
               SqlDataAdapter adaptor3 = new SqlDataAdapter(komut3, baglanti);
               DataTable table3 = new DataTable();
               adaptor3.Fill(table3);
               GridView3.DataSource = table3;
               GridView3.DataBind();
            toplam += Convert.ToInt32(table3.Rows.Count.ToString());


            string komut4 = " select Ay_Adi as ' Ay ',Gun_4 as ' 4 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_4='" + Izin_List.SelectedItem + "'";
               SqlDataAdapter adaptor4 = new SqlDataAdapter(komut4, baglanti);
               DataTable table4 = new DataTable();
               adaptor4.Fill(table4);
               GridView4.DataSource = table4;
               GridView4.DataBind();
            toplam += Convert.ToInt32(table4.Rows.Count.ToString());

            string komut5 = " select Ay_Adi as ' Ay ',Gun_5 as ' 5 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_5='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor5 = new SqlDataAdapter(komut5, baglanti);
            DataTable table5 = new DataTable();
            adaptor5.Fill(table5);
            GridView5.DataSource = table5;
            GridView5.DataBind();
            toplam += Convert.ToInt32(table5.Rows.Count.ToString());



            string komut6 = " select Ay_Adi as ' Ay ',Gun_6 as ' 6 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_6='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor6 = new SqlDataAdapter(komut6, baglanti);
            DataTable table6 = new DataTable();
            adaptor6.Fill(table6);
            GridView6.DataSource = table6;
            GridView6.DataBind();
            toplam += Convert.ToInt32(table6.Rows.Count.ToString());

            string komut7 = " select Ay_Adi as ' Ay ',Gun_7 as ' 7 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_7='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor7 = new SqlDataAdapter(komut7, baglanti);
            DataTable table7 = new DataTable();
            adaptor7.Fill(table7);
            GridView7.DataSource = table7;
            GridView7.DataBind();
            toplam += Convert.ToInt32(table7.Rows.Count.ToString());

            string komut8 = " select Ay_Adi as ' Ay ',Gun_8 as ' 8 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_8='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor8 = new SqlDataAdapter(komut8, baglanti);
            DataTable table8= new DataTable();
            adaptor8.Fill(table8);
            GridView8.DataSource = table8;
            GridView8.DataBind();
            toplam += Convert.ToInt32(table8.Rows.Count.ToString());


            string komut9 = " select Ay_Adi as ' Ay ',Gun_9 as ' 9 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_9='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor9 = new SqlDataAdapter(komut9, baglanti);
            DataTable table9 = new DataTable();
            adaptor9.Fill(table9);
            GridView9.DataSource = table9;
            GridView9.DataBind();
            toplam += Convert.ToInt32(table9.Rows.Count.ToString());

            string komut10 = " select Ay_Adi as ' Ay ',Gun_10 as ' 10 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_10='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor10 = new SqlDataAdapter(komut10, baglanti);
            DataTable table10 = new DataTable();
            adaptor10.Fill(table10);
            GridView10.DataSource = table10;
            GridView10.DataBind();
            toplam += Convert.ToInt32(table10.Rows.Count.ToString());



            string komut11 = " select Ay_Adi as ' Ay ',Gun_11 as ' 11 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_11='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor11 = new SqlDataAdapter(komut11, baglanti);
            DataTable table11= new DataTable();
            adaptor11.Fill(table11);
            GridView11.DataSource = table11;
            GridView11.DataBind();
            toplam += Convert.ToInt32(table11.Rows.Count.ToString());

            string komut12 = " select Ay_Adi as ' Ay ',Gun_12 as ' 12 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_12='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor12= new SqlDataAdapter(komut12, baglanti);
            DataTable table12 = new DataTable();
            adaptor12.Fill(table12);
            GridView12.DataSource = table12;
            GridView12.DataBind();
            toplam += Convert.ToInt32(table12.Rows.Count.ToString());


            string komut13 = " select Ay_Adi as ' Ay ',Gun_13 as ' 13 '  from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_13='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor13 = new SqlDataAdapter(komut13, baglanti);
            DataTable table13 = new DataTable();
            adaptor13.Fill(table13);
            GridView13.DataSource = table13;
            GridView13.DataBind();
            toplam += Convert.ToInt32(table13.Rows.Count.ToString());

            string komut14 = " select Ay_Adi as ' Ay ',Gun_14 as ' 14 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_14='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor14 = new SqlDataAdapter(komut14, baglanti);
            DataTable table14 = new DataTable();
            adaptor14.Fill(table14);
            GridView14.DataSource = table14;
            GridView14.DataBind();
            toplam += Convert.ToInt32(table14.Rows.Count.ToString());

            string komut15 = " select Ay_Adi as ' Ay ',Gun_15 as ' 15 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_15='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor15 = new SqlDataAdapter(komut15, baglanti);
            DataTable table15 = new DataTable();
            adaptor15.Fill(table15);
            GridView15.DataSource = table15;
            GridView15.DataBind();
            toplam += Convert.ToInt32(table15.Rows.Count.ToString());


            string komut16 = " select Ay_Adi as ' Ay ',Gun_16 as ' 16 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_16='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor16 = new SqlDataAdapter(komut16, baglanti);
            DataTable table16 = new DataTable();
            adaptor16.Fill(table16);
            GridView16.DataSource = table16;
            GridView16.DataBind();
            toplam += Convert.ToInt32(table16.Rows.Count.ToString());

            string komut17 = " select Ay_Adi as ' Ay ',Gun_17 as ' 17 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_17='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor17 = new SqlDataAdapter(komut17, baglanti);
            DataTable table17 = new DataTable();
            adaptor17.Fill(table17);
            GridView17.DataSource = table17;
            GridView17.DataBind();
            toplam += Convert.ToInt32(table17.Rows.Count.ToString());



            string komut18 = " select Ay_Adi as ' Ay ',Gun_18 as ' 18 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_18='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor18 = new SqlDataAdapter(komut18, baglanti);
            DataTable table18 = new DataTable();
            adaptor18.Fill(table18);
            GridView18.DataSource = table18;
            GridView18.DataBind();
            toplam += Convert.ToInt32(table18.Rows.Count.ToString());

            string komut19 = " select Ay_Adi as ' Ay ',Gun_19 as ' 19 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_19='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor19 = new SqlDataAdapter(komut19, baglanti);
            DataTable table19 = new DataTable();
            adaptor19.Fill(table19);
            GridView19.DataSource = table19;
            GridView19.DataBind();
            toplam += Convert.ToInt32(table19.Rows.Count.ToString());


            string komut20 = " select Ay_Adi as ' Ay ',Gun_20 as ' 20 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_20='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor20 = new SqlDataAdapter(komut20, baglanti);
            DataTable table20 = new DataTable();
            adaptor20.Fill(table20);
            GridView20.DataSource = table20;
            GridView20.DataBind();
            toplam += Convert.ToInt32(table20.Rows.Count.ToString());

            string komut21 = " select Ay_Adi as ' Ay ',Gun_21 as ' 21 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_21='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor21 = new SqlDataAdapter(komut21, baglanti);
            DataTable table21 = new DataTable();
            adaptor21.Fill(table21);
            GridView21.DataSource = table21;
            GridView21.DataBind();
            toplam += Convert.ToInt32(table21.Rows.Count.ToString());

            string komut22 = " select Ay_Adi as ' Ay ',Gun_22 as ' 22 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_22='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor22 = new SqlDataAdapter(komut22, baglanti);
            DataTable table22 = new DataTable();
            adaptor22.Fill(table22);
            GridView22.DataSource = table22;
            GridView22.DataBind();
            toplam += Convert.ToInt32(table22.Rows.Count.ToString());

            string komut23 = " select Ay_Adi as ' Ay ',Gun_23 as ' 23 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_23='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor23 = new SqlDataAdapter(komut23, baglanti);
            DataTable table23 = new DataTable();
            adaptor23.Fill(table23);
            GridView23.DataSource = table23;
            GridView23.DataBind();
            toplam += Convert.ToInt32(table23.Rows.Count.ToString());

            string komut24 = " select Ay_Adi  as ' Ay ',Gun_24 as ' 24 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_24='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor24 = new SqlDataAdapter(komut24, baglanti);
            DataTable table24 = new DataTable();
            adaptor24.Fill(table24);
            GridView24.DataSource = table24;
            GridView24.DataBind();
            toplam += Convert.ToInt32(table24.Rows.Count.ToString());

            string komut25 = " select Ay_Adi as ' Ay ',Gun_25  ' 25 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_25='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor25 = new SqlDataAdapter(komut25, baglanti);
            DataTable table25 = new DataTable();
            adaptor25.Fill(table25);
            GridView25.DataSource = table25;
            GridView25.DataBind();
            toplam += Convert.ToInt32(table25.Rows.Count.ToString());

            string komut26 = " select Ay_Adi as ' Ay ',Gun_26 as ' 26 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_26='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor26 = new SqlDataAdapter(komut26, baglanti);
            DataTable table26 = new DataTable();
            adaptor26.Fill(table26);
            GridView26.DataSource = table26;
            GridView26.DataBind();
            toplam += Convert.ToInt32(table26.Rows.Count.ToString());

            string komut27 = " select Ay_Adi as ' Ay ',Gun_27 as ' 27 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_27='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor27 = new SqlDataAdapter(komut27, baglanti);
            DataTable table27 = new DataTable();
            adaptor27.Fill(table27);
            GridView27.DataSource = table27;
            GridView27.DataBind();
            toplam += Convert.ToInt32(table27.Rows.Count.ToString());

            string komut28 = " select Ay_Adi as ' Ay ',Gun_28 as ' 28 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_28='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor28 = new SqlDataAdapter(komut28, baglanti);
            DataTable table28 = new DataTable();
            adaptor28.Fill(table28);
            GridView28.DataSource = table28;
            GridView28.DataBind();
            toplam += Convert.ToInt32(table28.Rows.Count.ToString());

            string komut29 = " select Ay_Adi as ' Ay ',Gun_29 as ' 29 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_29='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor29 = new SqlDataAdapter(komut29, baglanti);
            DataTable table29 = new DataTable();
            adaptor29.Fill(table29);
            GridView29.DataSource = table29;
            GridView29.DataBind();
            toplam += Convert.ToInt32(table29.Rows.Count.ToString());

            string komut30 = " select Ay_Adi as ' Ay ',Gun_30 as ' 30 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_30='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor30 = new SqlDataAdapter(komut30, baglanti);
            DataTable table30 = new DataTable();
            adaptor30.Fill(table30);
            GridView30.DataSource = table30;
            GridView30.DataBind();
            toplam += Convert.ToInt32(table30.Rows.Count.ToString());

            string komut31 = " select Ay_Adi as ' Ay ',Gun_31 as ' 31 ' from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_31='" + Izin_List.SelectedItem + "'";
            SqlDataAdapter adaptor31 = new SqlDataAdapter(komut31, baglanti);
            DataTable table31 = new DataTable();
            adaptor31.Fill(table31);
            GridView31.DataSource = table31;
            GridView31.DataBind();
            toplam += Convert.ToInt32(table31.Rows.Count.ToString());

            int Izin = 14;

           
            if (Izin_List.SelectedItem.Text=="Yıllık İzin")
            {
                
                Label6.Text = toplam.ToString();
                int Kullanilan = Convert.ToInt32(toplam.ToString());
                Label8.Text = Convert.ToString(Izin - Kullanilan);
               
                Label5.Visible = true; 
                Label8.Visible = true;
            }
            else
            {
                Label6.Text = toplam.ToString();
                Label8.Visible = false;
                Label5.Visible = false;
                

            }
            /*      baglanti.Open();
                  SqlCommand cmd = new SqlCommand();

                  cmd.Connection = baglanti;
                  SqlDataReader dataread;
                  for (int j=1; j < ListBox2.Items.Count; j++)
                  { 

                  for (int i = 1; i < 32; i++)
                  {

                      cmd.CommandText = "select Gun_" + i + " Isci from Vardiya_Tbl where Isci_Id='" + Label1.Text + "' and Yil_Adi='" + Yil_List.SelectedItem + "' and Gun_" + i + "='" + Izin_List.SelectedItem + "' and Ay_Adi='"+ListBox2.Items[j]+"'";

                  }              
                  }
                  dataread = cmd.ExecuteReader();
                  while (dataread.Read())
                  {
                      ListBox1.Items.Add(dataread["Isci_Id"].ToString());
                  }

                  // Label6.Text = ListBox1.Items.Count;
                  baglanti.Close();*/
        }
    }
}