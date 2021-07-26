<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kullanici_Islem.aspx.cs" Inherits="Vardiya.Kullanici_Islem" %>

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
             text-align:center;
              
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
          .auto-style8 {
              height: 22px;
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
                    
                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                    
               </td>
               </tr>
        
            <tr> 
                <td class="auto-style8"> <div class="menu">
    <h2 class="ustoge"><a href="Kullanici.aspx">Vardiya Görüntüle</a></h2>
    <h2 class="ustoge"><a href="Kullanici_Calisma_Saati.aspx">Çalışma Saati Görüntüle</a></h2> 
    <h2 class="ustoge"><a href="Kullanici_Izin.aspx">İzin Görüntüle</a></h2>
    <h2 class="ustoge"><a href="Kullanici_Islem.aspx">Şifre Değiştir</a></h2>
</div></td>
                <td class="islem">

                    <table>
                        <tr>
                            <td>

                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Kullanıcı Adınız  "></asp:Label>
                            </td>
                            <td> <asp:Label ID="Label10" runat="server" Text=":"></asp:Label></td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Label" Height="20px"></asp:Label>
                            </td>
                           
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Eski Şifrenizi Giriniz  "></asp:Label>
                            </td>
                              <td> <asp:Label ID="Label11" runat="server" Text=":"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="130px"></asp:TextBox>
                            </td>
                        </tr>
                           <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr><td></td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Yeni Şifrenizi Giriniz  "></asp:Label>

                            </td>
                              <td> <asp:Label ID="Label12" runat="server" Text=":"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="130px"></asp:TextBox>
                            </td>
                        </tr>
                           <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr><td></td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Yeni Şİfrenizi Tekrar Giriniz  "></asp:Label>
                            </td>
                              <td> <asp:Label ID="Label13" runat="server" Text=":"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="130px"></asp:TextBox>
                            </td>
                            
                        </tr>
                           <tr>
                            <td>
                                <br />
                                <br />

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td></td> <td></td>
                            <td>  <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr><td></td>
                            <td>
                                
                              
                                <asp:Label ID="Label9" runat="server" Text=" "></asp:Label>
                            </td>
                            <td></td><td></td>
                            <td>
                                <asp:Button ID="Degis_Btn" runat="server" Text="Değiştir" OnClick="Degis_Btn_Click" Height="25px" Width="130px" />
                            </td>
                        </tr>
                    </table>
                    </td>
                </tr>
          </table>
    </form>
</body>
</html>
