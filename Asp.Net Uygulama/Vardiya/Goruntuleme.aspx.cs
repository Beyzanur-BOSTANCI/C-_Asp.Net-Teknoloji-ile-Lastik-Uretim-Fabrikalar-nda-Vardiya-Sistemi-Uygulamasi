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
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.Text;


namespace Vardiya
{
    public partial class Goruntuleme : System.Web.UI.Page
    {
        SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            /*
                        if (Session["admin"] != "1")
                        {
                            Response.Redirect("Giris.aspx");
                        }*/
   

            baglanti = new SqlConnection(baglanStr);
            string komut = " select TC as ' TC Numarası ',Adi as ' İşçi Adı ',Soyadi as ' Soyadı ',Unvan_Adi as ' Ünvan ',Unite_Adi as ' Ünite ',EPosta as ' E-Posta ',Telefon as ' Telefon Numarası ',Kan_Grubu as ' Kan Grubu ',En_Fazla_Calisma_Saati as ' En Fazla Çalışma Saati ',Kullanici_Adi as ' Kullanıcı Adı ',Kullanici_Sifre as ' Kullanıcı Şifre ' from Isci_Bilgileri_Tbl ";
            SqlDataAdapter adaptor = new SqlDataAdapter(komut, baglanti);
            DataTable table = new DataTable();
            adaptor.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
     
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
        protected void Pdf_Kayit_Click(object sender, EventArgs e)
        {

          
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            /*  string tarih = DateTime.Now.ToString("dd.mm.yyyy");
              DateTime tarih1 = DateTime.Now; //Dosya ismine sistem saatini ekledim
              Response.ContentType = "application/pdf";
              Response.AddHeader("content-disposition", "attachment;filename=Kisi_Listesi_" + tarih + ".pdf");
              Response.Cache.SetCacheability(HttpCacheability.NoCache);
              StringWriter sw = new StringWriter();
              HtmlTextWriter hw = new HtmlTextWriter(sw);
              GridView1.AllowPaging = false;
              GridView1.DataBind();
              GridView1.RenderControl(hw);
              StringReader sr = new StringReader(sw.ToString());
              Document pdfDoc = new Document(PageSize.A4.Rotate(), 10f, 10f, 10f, 0f);
              HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
              PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
              pdfDoc.SetPageSize(iTextSharp.text.PageSize.A4.Rotate()); //Yatay olarak kaydetmek için
            //  pdfDoc.SetPageSize(iTextSharp.text.PageSize.A4);// Dikey olarak kaydetmek için

              pdfDoc.Open();
              htmlparser.Parse(sr);
              pdfDoc.Close();
              Response.Write(pdfDoc);
              Response.End();*/


            PdfPTable pdfTable = new PdfPTable(GridView1.HeaderRow.Cells.Count);



            foreach (TableCell headerCell in GridView1.HeaderRow.Cells)
            {
                Font font = new Font();
                font.Color = new BaseColor(GridView1.HeaderStyle.ForeColor);

                PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text));
                pdfTable.AddCell(pdfCell);


            }

            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                foreach (TableCell tableCell in gridViewRow.Cells)
                {
                    PdfPCell pdfCell = new PdfPCell(new Phrase(tableCell.Text));
                    pdfTable.AddCell(pdfCell);
                }
            }
            Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
            pdfDocument.SetPageSize(iTextSharp.text.PageSize.A4.Rotate());


            pdfDocument.Open();
            pdfDocument.Add(pdfTable);
            pdfDocument.Close();

            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;filename=Employess.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }
    }
    }
