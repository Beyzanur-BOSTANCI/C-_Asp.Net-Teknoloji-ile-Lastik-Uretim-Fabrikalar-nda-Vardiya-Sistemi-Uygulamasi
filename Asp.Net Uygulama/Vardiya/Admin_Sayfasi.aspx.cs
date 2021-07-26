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
    public partial class Admin_Sayfasi : System.Web.UI.Page
    {
       // SqlConnection baglanti;
        string baglanStr = ConfigurationManager.ConnectionStrings["VardiyaSistemiConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Giris.aspx");
            }
            else
                Response.Write(Session["admin"]);
        }
    }
}