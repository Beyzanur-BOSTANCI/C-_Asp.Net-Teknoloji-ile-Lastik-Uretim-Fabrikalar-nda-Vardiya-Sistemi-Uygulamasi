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
    public partial class Kullanici_Anasayfa : System.Web.UI.Page
    {
        SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("Giris.aspx");
            }
            else
                Response.Write(Session["Kullanici"] + "sisteme giris yaptı");
            Response.Write(Session["Sifre"] + "sisteme giris yaptı");

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
    }
}