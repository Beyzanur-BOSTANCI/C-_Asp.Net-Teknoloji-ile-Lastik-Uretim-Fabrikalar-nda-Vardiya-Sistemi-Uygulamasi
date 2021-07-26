<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Vardiya_Kayit.aspx.cs" Inherits="Vardiya.Vardiya_Kayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            height: 454px;
            width: 950px;
        }
        .auto-style12 {
            height: 20px;
            width: 50px;
        }
        .auto-style13 {
            margin-left: 0;
        }
        .auto-style15 {
            width: 50px;
        }
        .auto-style16 {
            width: 50px;
        }
        .auto-style17 {
            width: 50px;
        }
        .auto-style18 {
            width: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="auto-style11">
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label1" runat="server" Text="Yıl Seçiniz :"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:DropDownList ID="Yil_List" runat="server" Height="20px" Width="130px">
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style16">
                <asp:Label ID="Label2" runat="server" Text="Ay Seçiniz : "></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:DropDownList ID="Ay_List" runat="server" Height="20px" Width="130px">
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
                </asp:DropDownList>
            </td>
              <td class="auto-style18">
                <asp:Label ID="Label4" runat="server" Text="Ünite Seçiniz : "></asp:Label>
            </td>
              <td class="auto-style15">
                 <asp:DropDownList ID="Unite_List" runat="server" Height="20px" Width="130px">
                                   <asp:ListItem>İmalat</asp:ListItem>
                                   <asp:ListItem>İnsan Kaynakları</asp:ListItem>
                               </asp:DropDownList>
            </td>
           <td class="auto-style15" style: align="right"><asp:Button ID="Olustur_Btn" runat="server" Text="İsimleri Getir" OnClick="Olustur_Btn_Click" Height="24px" Width="130px" /></td>
        </tr>
          <tr>
              <td class="auto-style15"></td>
          </tr>
          <tr>
              <td class="auto-style15"> <asp:Label ID="Label5" runat="server" Text="İsim Seçiniz :"></asp:Label> </td>
              <td class="auto-style15">
                  <asp:ListBox ID="Isim_Getir" runat="server" Width="130px" SelectionMode="Multiple" Height="90px"></asp:ListBox>
              
              </td>
              
              <td class="auto-style16"></td>
              <td style: align="center" class="auto-style17"> 
                  <asp:Button ID="Aktar_Btn" runat="server" Text=">>" Width="77px" OnClick="Aktar_Btn_Click" />
                  <asp:Button ID="Geri_Aktar_Btn" runat="server" Text="<<" Width="77px" OnClick="Geri_Aktar_Btn_Click" />
              </td>
          <td class="auto-style18"></td>
          <td class="auto-style15">
              <asp:ListBox ID="Vardiya_Isim" runat="server" Width="130px" SelectionMode="Multiple" Height="90px"></asp:ListBox>

          </td>
              <td class="auto-style15">
                  <asp:ListBox ID="Isci_Id_Tut" runat="server" Height="26px" Visible="False" Width="16px"></asp:ListBox>
                  <asp:TextBox ID="Id_Txt" runat="server" Visible="False" Width="16px"></asp:TextBox>
              </td>
               </tr>
          <tr >
              <td class="auto-style12"> </td>
          </tr>
          <tr style: align="center">
              <td class="auto-style15">1</td><td class="auto-style15">2</td><td class="auto-style16">3</td><td class="auto-style17">4</td><td class="auto-style18">5</td><td class="auto-style15">6</td><td class="auto-style15">7</td>
          </tr>
         <tr style: align="center">
              <td class="auto-style15">
                  <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList4" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style16"><asp:DropDownList ID="DropDownList5" runat="server" Height="20px" Width="130px">
                     <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style17"><asp:DropDownList ID="DropDownList6" runat="server" Height="20px" Width="130px">
                 <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style18"><asp:DropDownList ID="DropDownList7" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList8" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList9" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td>
          </tr>
           <tr >
              <td class="auto-style12"> </td>
          </tr>
          <tr style: align="center">
              <td class="auto-style15">8</td><td class="auto-style15">9</td><td class="auto-style16">10</td><td class="auto-style17">11</td><td class="auto-style18">12</td><td class="auto-style15">13</td><td class="auto-style15">14</td>
          </tr>
         <tr style: align="center">
              <td class="auto-style15">
                  <asp:DropDownList ID="DropDownList10" runat="server" Height="20px" Width="130px">
                    <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList11" runat="server" Height="20px" Width="130px">
                    <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style16"><asp:DropDownList ID="DropDownList12" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style17"><asp:DropDownList ID="DropDownList13" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style18"><asp:DropDownList ID="DropDownList14" runat="server" Height="20px" Width="130px">
                   <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList15" runat="server" Height="20px" Width="130px">
                     <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList16" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td>
          </tr>
           <tr >
              <td class="auto-style12"> </td>
          </tr>
          <tr style: align="center">
              <td class="auto-style15">15</td><td class="auto-style15">16</td><td class="auto-style16">17</td><td class="auto-style17">18</td><td class="auto-style18">19</td><td class="auto-style15">20</td><td class="auto-style15">21</td>
          </tr>
         <tr style: align="center">
              <td class="auto-style15">
                  <asp:DropDownList ID="DropDownList17" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList18" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style16"><asp:DropDownList ID="DropDownList19" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style17"><asp:DropDownList ID="DropDownList20" runat="server" Height="20px" Width="130px">
                 <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style18"><asp:DropDownList ID="DropDownList21" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td>
             <td class="auto-style15"><asp:DropDownList ID="DropDownList22" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList23" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td>
          </tr>
           <tr >
              <td class="auto-style12"> </td>
          </tr>
          <tr style: align="center">
              <td class="auto-style15">22</td><td class="auto-style15">23</td><td class="auto-style16">24</td><td class="auto-style17">25</td><td class="auto-style18">26</td><td class="auto-style15">27</td><td class="auto-style15">28</td>
          </tr>
         <tr style: align="center">
              <td class="auto-style15">
                  <asp:DropDownList ID="DropDownList24" runat="server" Height="20px" Width="130px">
                   <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList25" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style16"><asp:DropDownList ID="DropDownList26" runat="server" Height="20px" Width="130px">
                   <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style17"><asp:DropDownList ID="DropDownList27" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style18"><asp:DropDownList ID="DropDownList28" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList29" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList30" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td>
          </tr>

           <tr >
              <td class="auto-style12"> </td>
          </tr>
          <tr style: align="center">
              <td class="auto-style15">29</td><td class="auto-style15">30</td><td class="auto-style16">31</td>
          </tr>
         <tr style: align="center">
              <td class="auto-style15">
                  <asp:DropDownList ID="DropDownList31" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style15"><asp:DropDownList ID="DropDownList32" runat="server" Height="20px" Width="130px">
                     <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td class="auto-style16"><asp:DropDownList ID="DropDownList33" runat="server" Height="20px" Width="130px">
                     <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                      </asp:DropDownList></td>
          </tr>
          <tr>
              <td class="auto-style15">
                  &nbsp;</td> <td class="auto-style15"></td> <td class="auto-style16"></td> <td class="auto-style17"></td> <td class="auto-style18"></td> <td class="auto-style15">
              <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
              </td> 
              <td style: align="right"" class="auto-style15">
                  <asp:Button ID="Vardiya_Kaydet_Btn" runat="server" Text="Kaydet" CssClass="auto-style13" Width="130px" OnClick="Vardiya_Kaydet_Btn_Click" /></td>
          </tr>
    </table>
</asp:Content>
