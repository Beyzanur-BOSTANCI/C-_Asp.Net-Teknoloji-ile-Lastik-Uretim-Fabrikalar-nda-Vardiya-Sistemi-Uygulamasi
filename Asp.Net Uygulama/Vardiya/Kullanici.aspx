<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kullanici.aspx.cs" Inherits="Vardiya.Kullanici1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
        <link href="/Menu.css" rel="stylesheet" />
      <style type="text/css">
        .auto-style2 {
            width: 930px;
            background-image: url('Resimler/Lastik3.jpg');
             background-repeat:repeat;
            height: 82px;
            font: 18px normal Arial, Helvetica, sans-serif;
        }
        .auto-style4 {
            width: 1272px;
              height: 591px;
          }
        .auto-style5 {
            width: 279px;
        }
        .auto-style6 {
            width: 300px;
            background: #fff;
            height: 82px;
              background-image:url("/Resimler/logo2.jpg");
              background-repeat:no-repeat;
              text-align:center;
        }
          .kullanici{
         float:left;
          width:609px;
          height:45px;
          border-right:1px solid #ff0000;
         line-height:45px;
          }
          .kullanici ul{
                  list-style:none;
          }
          .kullanici ul li{
               
             margin-left:15px;
             color:#555;
          }
          .islem{
              background:#fff;
          }
          .cikis-wrap{
    float:right;
    width:160px;
    height:45px;
    line-height:45px;
    font: 15px normal Arial, Helvetica, sans-serif;
}
          .isim{
                  float:left;
    width:160px;
    height:25px;
    line-height:45px;
    font: 15px normal Arial, Helvetica, sans-serif;
          }
          .auto-style7 {
              width: 100%;
          }
          </style>
    
</head>
<body>
    <form id="form1" runat="server">
     <table class="auto-style4">
           <tr>
               <td class="auto-style5"><div class="auto-style6"></div></td>
               <td class="auto-style2"> 
                    <nav>
               <ul>
                   <li>
                       <a href="Anasayfa.aspx">  Anasayfa </a>
                     
                   </li>
                     <li>
                      <a href="#.aspx">  Hakkımızda </a> 
                   </li>
                     <li class="unite-wrap">
                        <a href="#.aspx">  Üniteler </a>
                         <div class="unite">
                         <ul>
                             <li><a href="Pisirme.aspx"> Pişim Unitesi</a></li>
                             <li><a href="#.aspx"> Imalat Unitesi</a> </li>
                        </ul>
                             </div>
                         <br />
                  </li>
                     <li>
                       <a href="#.aspx">  İletişim </a>  
                   </li>
               </ul>
           </nav>
                   <div class="isim">
                  &nbsp;&nbsp;&nbsp; <asp:Label ID="Isim_Lbl" runat="server" Text="Label" ForeColor="White" Height="20px"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label> 
                       </div>
                    
                   <div class="cikis-wrap">
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Anasayfa.aspx">Çıkış</a>
               
           </div>   
                   <div class="isim">
                      &nbsp;&nbsp;&nbsp;   <asp:Label ID="Unite_Lbl" runat="server" Text="Label" ForeColor="White" Height="18px"></asp:Label>
                      </div>
                    
               </td>
               </tr>
        
            <tr> <td class="auto-style8"> <div class="menu">
    <h2 class="ustoge"><a href="Kullanici.aspx">Vardiya Görüntüle</a></h2>
    <h2 class="ustoge"><a href="Kullanici_Calisma_Saati.aspx">Çalışma Saati Görüntüle</a></h2> 
    <h2 class="ustoge"><a href="Kullanici_Izin.aspx">İzin Görüntüle</a></h2>
    <h2 class="ustoge"><a href="Kullanici_Islem.aspx">Şifre Değiştir</a></h2>
</div></td>
                <td class="islem">
                    
                    <table class="auto-style7">
                        <tr><td>
                               
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Yıl Seçiniz :"></asp:Label></td>
                            <td>  <asp:DropDownList ID="Yil_List" runat="server" Height="20px" Width="130px">
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                </asp:DropDownList>
                                </td>
                            <td><asp:Label ID="Label3" runat="server" Text="Ay Seçiniz :"></asp:Label></td>
                            <td> <asp:DropDownList ID="Ay_List" runat="server" Height="20px" Width="130px">
                    <asp:ListItem>Ocak</asp:ListItem>
                    <asp:ListItem>Şubat</asp:ListItem>
                    <asp:ListItem>Mart</asp:ListItem>
                    <asp:ListItem>Nisan</asp:ListItem>
                    <asp:ListItem>Mayıs</asp:ListItem>
                    <asp:ListItem>Haziran</asp:ListItem>
                    <asp:ListItem>Temmuz</asp:ListItem>
                    <asp:ListItem>Ağustos</asp:ListItem>
                    <asp:ListItem>Eylül</asp:ListItem>
                    <asp:ListItem>Ekim</asp:ListItem>
                    <asp:ListItem>Kasım</asp:ListItem>
                    <asp:ListItem>Aralık</asp:ListItem>
                </asp:DropDownList></td>
                            <td>
                                <asp:Button ID="Goruntule_Btn" runat="server" Text="Vardiya Görüntüle" OnClick="Goruntule_Btn_Click" Height="25px" Width="130px" /></td>
                        </tr>
                        <tr>
                            <td>

                                <br />
                                <br />

                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td><td>
                           
                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                            </td></tr>
                        <tr>
                            <td>

                                <br />

                            </td>
                        </tr>
                        <tr><td></td><td>
                        <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView> </td></tr>
                          <tr>
                            <td>

                                <br />

                            </td>
                        </tr>
                        <tr><td></td><td>
                        <asp:GridView ID="GridView3" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView> </td></tr>
                          <tr>
                            <td>

                                <br />

                            </td>
                        </tr>
                        <tr><td></td><td>
                        <asp:GridView ID="GridView4" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView></td></tr>
                          <tr>
                            <td>

                                <br />

                            </td>
                        </tr>
                        <tr><td></td><td>
                        <asp:GridView ID="GridView5" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView></td></tr>
                    </table>
                    
                    </td>
               

                </tr>
         </table>

                    
    </form>
</body>
</html>
