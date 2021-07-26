<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Kayit_Guncelle.aspx.cs" Inherits="Vardiya.Kayit_Guncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            margin-top: 0;
        }
        
   
      
        
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
                       <tr><td></td><td>
                           <asp:Label ID="Label1" runat="server" Text="TC  "></asp:Label></td>
                           <td>
                               <asp:Label ID="Label10" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style14">
                               <asp:TextBox ID="TC_Txt" runat="server" Width="176px" Height="23px"></asp:TextBox></td>
                   
                           <td>

                            </td>
                         
                           <td>
                              
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                           <td>                 <asp:Button ID="Ara_Btn" runat="server" Text="Ara" Width="130px" Height="25px" CssClass="auto-style10" OnClick="Ara_Btn_Click" />
                               </td>
                       </tr>
        <tr><td>
            <br />
            </td></tr>
                       <tr><td></td><td>
                           <asp:Label ID="Label2" runat="server" Text="Adı  "></asp:Label></td>
                            <td>
                               <asp:Label ID="Label11" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style14">
                           
                               <asp:TextBox ID="Ad_Txt" runat="server" Width="175px"></asp:TextBox></td>
                          <td class="auto-style13"></td> <td class="auto-style11"></td> <td>
                               
                               <asp:Label ID="Label19" runat="server" Text="Ünite "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label33" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:TextBox ID="Unite_Txt" runat="server" Width="175px" Height="16px"></asp:TextBox>
                           </td>
                       </tr>
                       <tr><td></td><td>
                           <asp:Label ID="Label3" runat="server" Text="Soyadı  "></asp:Label></td>
                            <td>
                               <asp:Label ID="Label12" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style14">
                          
                               <asp:TextBox ID="Soyad_Txt" runat="server" Width="175px"></asp:TextBox></td>
                           <td >

                           </td><td class="auto-style11"></td> 
                          <td class="auto-style7">
                           <asp:Label ID="Label32" runat="server" Text="Kan Grubu "></asp:Label></td>
                                <td class="auto-style7">
                               <asp:Label ID="Label34" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style7">
                               <asp:TextBox ID="Kan_Grubu_Txt" runat="server" Width="175px" Height="16px"></asp:TextBox>
                              </td>
                       </tr>
                         <tr><td></td><td>
                           <asp:Label ID="Label4" runat="server" Text="Doğum Tarihi  "></asp:Label></td>
                              <td>
                               <asp:Label ID="Label13" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style14">
                                <asp:TextBox ID="Dogum_Tarihi_Txt" runat="server" Width="176px"></asp:TextBox>
                              </td>
                             <td class="auto-style13">

                             </td><td class="auto-style11"></td> 
                            <td>
                           <asp:Label ID="Label22" runat="server" Text="Önceden Bir Hastalık Geçirdi mi? "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label23" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:TextBox ID="Hastalik_Txt" runat="server" Width="175px" Height="16px"></asp:TextBox>
                              </td>
                          
                       </tr>
                           <tr><td></td>
                                <td>
                           <asp:Label ID="Label5" runat="server" Text="Medeni Durum  "></asp:Label></td>
                                  <td>
                               <asp:Label ID="Label14" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style14">
                               <asp:TextBox ID="Medeni_Durum_Txt" runat="server" Width="175px" Height="16px"></asp:TextBox> 
                               &nbsp;</td>
                               <td class="auto-style13">

                               </td><td class="auto-style11"></td>  
                                <td>
                           <asp:Label ID="Label24" runat="server" Text="Açıklama " ></asp:Label></td>
                                <td>
                               <asp:Label ID="Label25" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:TextBox ID="Aciklama_Txt" runat="server" TextMode="MultiLine"></asp:TextBox>
                              </td>  
                       </tr>
                         <tr><td></td><td>
                           <asp:Label ID="Label6" runat="server" Text="Adres  "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label15" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style14">
                               <asp:TextBox ID="Adres_Txt" runat="server" TextMode="MultiLine"></asp:TextBox>
                              </td>
                             <td class="auto-style13">

                             </td><td class="auto-style11"></td> 
                          <td>
                           <asp:Label ID="Label29" runat="server" Text="En Fazla Çalışma Saati " ></asp:Label></td>
                                <td>
                               <asp:Label ID="Label30" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:TextBox ID="Calisma_Saati_Txt" runat="server" Width="173px" ></asp:TextBox>
                              </td>
                       </tr>
                         <tr><td></td><td>
                           <asp:Label ID="Label7" runat="server" Text="Telefon  "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label16" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style14">
                               <asp:TextBox ID="Tel_Txt" runat="server" Width="175px"></asp:TextBox>
                              </td>
                             <td class="auto-style13">

                             </td><td class="auto-style11"></td> 
                             <td>
                           <asp:Label ID="Label26" runat="server" Text="Kullanıcı Adı  "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label27" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:TextBox ID="Kullanici_Adi_Txt" runat="server" Width="175px"></asp:TextBox>
                              </td>
                            
                       </tr>
                         <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td><td>
                           <asp:Label ID="Label8" runat="server" Text="E-Posta  "></asp:Label></td>

                                <td>
                               <asp:Label ID="Label17" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style14">
                               <asp:TextBox ID="Eposta_Txt" runat="server" Width="176px"></asp:TextBox>
                              </td>
                             <td class="auto-style13">

                             </td><td class="auto-style11"></td> 
                                 <td>
                           <asp:Label ID="Label28" runat="server" Text="Kullanıcı Şifre "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label31" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:TextBox ID="Kullanici_Sifre_Txt" runat="server" Width="174px"></asp:TextBox>
                              </td>
                       </tr>
          <tr>
              <td></td><td>
                             
                               <asp:Label ID="Label9" runat="server" Text="Ünvan  "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label18" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style14">
                               <asp:TextBox ID="Unvan_Adi" runat="server" Width="175px" Height="16px"></asp:TextBox>
                           </td>
              <td>

              </td>
              <td></td>
              <td> <asp:Label ID="Label20" runat="server" Text="Etkinlik Durumu"></asp:Label></td>
              <td>
                  <asp:Label ID="Label21" runat="server" Text=":"></asp:Label></td>
              <td>
                  <asp:TextBox ID="Etkinlik_Txt" runat="server" Width="175px" Height="16px"></asp:TextBox></td>
          </tr>
        <tr>
            <td></td>
        </tr>

                       <tr>
                          <td>
                           </td><td></td><td></td><td class="auto-style14"></td><td class="auto-style13"></td><td class="auto-style11"></td> 
                           <td class="auto-style10"></td> <td class="auto-style10"></td>
                            <td class="auto-style10">
                                <asp:Label ID="Ileti" runat="server" Text=""></asp:Label>
                           </td>
                       </tr>
        <tr>
            <td></td>
        </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td class="auto-style14"></td>
                           <td class="auto-style13"></td>
                           <td class="auto-style11"></td>
                           <td></td><td></td> 
                          <td style: align="right">
                              <asp:Button ID="Guncelle_Btn" runat="server" Text="Güncelle" OnClick="kaydet_btn_Click" Height="25px" Width="175px" /></td>
                       </tr>
        <tr>
            <td class="auto-style11">

                <br />

            </td>
        </tr>
                   </table>
    <table>
        <tr>
            <td>
                                     
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                &nbsp;<img src="Resimler/Lastik15.jpg" /></td>
         
        </tr>
    </table>

</asp:Content>
