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
    public partial class Kayit_Ara : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        protected void Ara_Btn_Click(object sender, EventArgs e)
        {
            baglanti = new SqlConnection(baglanStr);
            string komut= " select TC as ' TC Numarası ',Adi as ' İşçi Adı ',Soyadi as ' Soyadı ',Unvan_Adi as ' Ünvan ',Unite_Adi as ' Ünite ',EPosta as ' E-Posta ',Telefon as ' Telefon Numarası ',Kan_Grubu as ' Kan Grubu ',En_Fazla_Calisma_Saati as ' En Fazla Çalışma Saati ',Kullanici_Adi as ' Kullanıcı Adı ',Kullanici_Sifre as ' Kullanıcı Şifre ' from Isci_Bilgileri_Tbl where Adi + ' ' + Soyadi = '" + Ara_Txt.Text+"'";
            SqlDataAdapter adaptor = new SqlDataAdapter(komut, baglanti);
            DataTable table = new DataTable();
            adaptor.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();

          
        }
    }
}