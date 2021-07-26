<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Kayit_Ekle.aspx.cs" Inherits="Vardiya.Kayit_Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .auto-style11 {
            height: 206px;
            width: 740px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
                       <tr><td></td><td>
                           <asp:Label ID="Label1" runat="server" Text="TC  "></asp:Label></td>
                           <td>
                               <asp:Label ID="Label10" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:TextBox ID="TC_Txt" runat="server" Width="176px"></asp:TextBox></td>
                           <td>

                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                         <td>
                               <asp:Label ID="Label9" runat="server" Text="Ünvan  "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label18" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:DropDownList ID="Unvan_List" runat="server" Height="16px" Width="174px">
                                   <asp:ListItem>Mühendis</asp:ListItem>
                                   <asp:ListItem>Teknisyen</asp:ListItem>
                                   <asp:ListItem>Servisman</asp:ListItem>
                                   <asp:ListItem>Operatör</asp:ListItem>
                                   <asp:ListItem>IK Çalışanı</asp:ListItem>
                                   <asp:ListItem>Muhasebeci</asp:ListItem>
                               </asp:DropDownList>
                           </td>
                           <td>                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                       </tr>
                       <tr><td></td><td>
                           <asp:Label ID="Label2" runat="server" Text="Adı  "></asp:Label></td>
                            <td>
                               <asp:Label ID="Label11" runat="server" Text=" : "></asp:Label></td>
                           <td>
                           
                               <asp:TextBox ID="Ad_Txt" runat="server" Width="175px"></asp:TextBox></td>
                          <td></td> <td>
                               
                               <asp:Label ID="Label19" runat="server" Text="Ünite "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label33" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:DropDownList ID="Unite_List" runat="server" Height="16px" Width="175px">
                                   <asp:ListItem>İmalat</asp:ListItem>
                                   <asp:ListItem>İnsan Kaynakları</asp:ListItem>
                                   <asp:ListItem>Muhasebe</asp:ListItem>
                                   <asp:ListItem></asp:ListItem>
                               </asp:DropDownList>
                           </td>
                       </tr>
                       <tr><td></td><td>
                           <asp:Label ID="Label3" runat="server" Text="Soyadı  "></asp:Label></td>
                            <td>
                               <asp:Label ID="Label12" runat="server" Text=" : "></asp:Label></td>
                           <td>
                          
                               <asp:TextBox ID="Soyad_Txt" runat="server" Width="175px"></asp:TextBox></td>
                           <td>

                           </td>
                          <td class="auto-style7">
                           <asp:Label ID="Label32" runat="server" Text="Kan Grubu "></asp:Label></td>
                                <td class="auto-style7">
                               <asp:Label ID="Label34" runat="server" Text=" : "></asp:Label></td>
                           <td class="auto-style7">
                               <asp:DropDownList ID="Kan_Grubu_List" runat="server" Height="22px" Width="178px">
                                   <asp:ListItem>A Rh+</asp:ListItem>
                                   <asp:ListItem>B Rh+</asp:ListItem>
                                   <asp:ListItem>AB Rh+</asp:ListItem>
                                   <asp:ListItem>0 Rh+</asp:ListItem>
                                   <asp:ListItem>A Rh-</asp:ListItem>
                                   <asp:ListItem>B Rh-</asp:ListItem>
                                   <asp:ListItem>AB Rh-</asp:ListItem>
                                   <asp:ListItem>0 Rh-</asp:ListItem>
                               </asp:DropDownList>
                              </td>
                       </tr>
                         <tr><td></td><td>
                           <asp:Label ID="Label4" runat="server" Text="Doğum Tarihi  "></asp:Label></td>
                              <td>
                               <asp:Label ID="Label13" runat="server" Text=" : "></asp:Label></td>
                           <td>
                                <asp:TextBox ID="Dogum_Tarihi_Txt" runat="server" Width="176px"></asp:TextBox>
                              </td>
                             <td>

                             </td>
                            <td>
                           <asp:Label ID="Label22" runat="server" Text="Önceden Bir Hastalık Geçirdi mi? "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label23" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:DropDownList ID="Hastalik_Gec_List" runat="server" Height="18px" Width="177px">
                                   <asp:ListItem>Evet</asp:ListItem>
                                   <asp:ListItem>Hayır</asp:ListItem>
                               </asp:DropDownList>
                              </td>
                          
                       </tr>
                           <tr><td></td>
                                <td>
                           <asp:Label ID="Label5" runat="server" Text="Medeni Durum  "></asp:Label></td>
                                  <td>
                               <asp:Label ID="Label14" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:DropDownList ID="MedeniDurum_List" runat="server" Height="16px" Width="180px">
                                   <asp:ListItem>Evli</asp:ListItem>
                                   <asp:ListItem>Bekar</asp:ListItem>
                               </asp:DropDownList>
                              </td>
                               <td>

                               </td> 
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
                           <td>
                               <asp:TextBox ID="Adres_Txt" runat="server" TextMode="MultiLine"></asp:TextBox>
                              </td>
                             <td>

                             </td>
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
                           <td>
                               <asp:TextBox ID="Tel_Txt" runat="server" Width="175px"></asp:TextBox>
                              </td>
                             <td>

                             </td>
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
                           <td>
                               <asp:TextBox ID="Eposta_Txt" runat="server" Width="176px"></asp:TextBox>
                              </td>
                             <td>

                             </td>
                                 <td>
                           <asp:Label ID="Label28" runat="server" Text="Kullanıcı Şifre "></asp:Label></td>
                                <td>
                               <asp:Label ID="Label31" runat="server" Text=" : "></asp:Label></td>
                           <td>
                               <asp:TextBox ID="Kullanici_Sifre_Txt" runat="server" Width="174px"></asp:TextBox>
                              </td>
                       </tr>
          <tr>
              <td></td>

          </tr>

                       <tr>
                          <td>
                           </td><td></td><td></td><td></td><td></td>
                           <td class="auto-style10"></td> <td class="auto-style10"></td>
                            <td class="auto-style10">
                                <asp:Label ID="Ileti" runat="server" Text=""></asp:Label>
                           </td>
                       </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                          <td style: align="right">
                              <asp:Button ID="kaydet_btn" runat="server" Text="Kaydet" OnClick="kaydet_btn_Click" Height="25px" Width="130px" /></td>
                       </tr>
        <tr>
            <td>

            </td>
        </tr>
                   </table>
    <table>
        <tr>
            <td>
                                     
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>
                &nbsp;<img src="Resimler/Lastik14.jpg" class="auto-style11" /></td>
        
        </tr>
    </table>
</asp:Content>
