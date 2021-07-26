<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Vardiya_Güncelleme.aspx.cs" Inherits="Vardiya.Vardiya_Güncelleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style11 {
            height: 17px;
            width:950px;
        }
        .auto-style12 {
              height: 20px;
              width: 130px;
          }
          .auto-style14 {
              height: 20px;
              width: 130px;
          }
          .auto-style15 {
              width: 100px;
          }
      
          .auto-style16 {
              margin-left: 0;
          }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style14">
                <asp:Label ID="Label1" runat="server" Text="Yıl Seçiniz :"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="Yil_List" runat="server" Height="20px" Width="130px">
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" Text="Ay Seçiniz : "></asp:Label>
            </td>
            <td class="auto-style7">
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
              <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Ünite Seçiniz : "></asp:Label>
            </td>
              <td class="auto-style7">
                 <asp:DropDownList ID="Unite_List" runat="server" Height="20px" Width="130px">
                                   <asp:ListItem>İmalat</asp:ListItem>
                                   <asp:ListItem>İnsan Kaynakları</asp:ListItem>
                               </asp:DropDownList>
            </td>
           <td class="auto-style7" style: align="right"><asp:Button ID="Olustur_Btn" runat="server" Text="İsimleri Getir" OnClick="Olustur_Btn_Click" CssClass="auto-style16" Width="130px" /></td>
        </tr>
          <tr>
              <td class="auto-style15"></td>
          </tr>
          <tr>
              <td class="auto-style15"> <asp:Label ID="Label5" runat="server" Text="İsim Seçiniz :"></asp:Label> </td>
              <td>
                  <asp:ListBox ID="Isim_Getir" runat="server" Width="130px" SelectionMode="Multiple" Height="95px"></asp:ListBox>
              
              </td>
              
              <td></td>
              <td style: align="center"> 
                  <asp:Button ID="Aktar_Btn" runat="server" Text=">>" Width="77px" OnClick="Aktar_Btn_Click" />
                  <asp:Button ID="Geri_Aktar_Btn" runat="server" Text="<<" Width="77px" OnClick="Geri_Aktar_Btn_Click" />
              </td>
          <td></td>
          <td>
              <asp:ListBox ID="Vardiya_Isim" runat="server" Width="130px" SelectionMode="Multiple" Height="95px"></asp:ListBox>

          </td>
              <td>
                  <asp:TextBox ID="Id_Txt" runat="server" Visible="False" Width="63px" Height="18px"></asp:TextBox>
                  <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
              </td>
               </tr>
          <tr >
              <td class="auto-style12"> </td>
          </tr>
          <tr style: align="center">
              <td class="auto-style15">1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td>
          </tr>
        <tr style: align="center">
            <td>             <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox8" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
        </tr>
         <tr style: align="center">
             
              <td class="auto-style15">
                  <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList5" runat="server" Height="20px" Width="130px">
                     <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList6" runat="server" Height="20px" Width="130px">
                 <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList7" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList8" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList9" runat="server" Height="20px" Width="130px">
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
              <td class="auto-style15">8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td>
          </tr>
            <tr style: align="center">
            <td>             <asp:TextBox ID="TextBox9" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox10" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox11" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox12" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox13" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox14" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox15" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
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
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList11" runat="server" Height="20px" Width="130px">
                    <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList12" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList13" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList14" runat="server" Height="20px" Width="130px">
                   <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList15" runat="server" Height="20px" Width="130px">
                     <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList16" runat="server" Height="20px" Width="130px">
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
              <td class="auto-style15">15</td><td>16</td><td>17</td><td>18</td><td>19</td><td>20</td><td>21</td>
          </tr>
            <tr style: align="center">
            <td>             <asp:TextBox ID="TextBox16" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox17" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox18" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox19" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox20" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox21" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox22" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
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
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList18" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList19" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList20" runat="server" Height="20px" Width="130px">
                 <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList21" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td>
             <td><asp:DropDownList ID="DropDownList22" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList23" runat="server" Height="20px" Width="130px">
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
              <td class="auto-style15">22</td><td>23</td><td>24</td><td>25</td><td>26</td><td>27</td><td>28</td>
          </tr>
            <tr style: align="center">
            <td>             <asp:TextBox ID="TextBox23" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox24" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox25" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox26" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox27" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox28" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox29" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
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
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList25" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList26" runat="server" Height="20px" Width="130px">
                   <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList27" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList28" runat="server" Height="20px" Width="130px">
                       <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList29" runat="server" Height="20px" Width="130px">
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList30" runat="server" Height="20px" Width="130px">
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
              <td class="auto-style15">29</td><td>30</td><td>31</td>
          </tr>
         <tr style: align="center">
            <td>             <asp:TextBox ID="TextBox30" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox31" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
            <td>             <asp:TextBox ID="TextBox32" runat="server" Height="20px" Width="130px"></asp:TextBox>
              </td>
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
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList32" runat="server" Height="20px" Width="130px">
                     <asp:ListItem></asp:ListItem>
                      <asp:ListItem>Var 1 ( 08.00 - 16.00 )</asp:ListItem>
                      <asp:ListItem>Var 2 ( 16.00 - 24.00 )</asp:ListItem>
                      <asp:ListItem>Var 3 ( 24.00 - 08.00 )</asp:ListItem>
                      <asp:ListItem>Tatil</asp:ListItem>
                      <asp:ListItem>Raporlu İzin</asp:ListItem>
                      <asp:ListItem>Yıllık İzin</asp:ListItem>
                  </asp:DropDownList></td><td><asp:DropDownList ID="DropDownList33" runat="server" Height="20px" Width="130px">
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
                  &nbsp;</td> <td></td> <td></td> <td>
              &nbsp;</td> <td></td> <td>
              <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
              </td> 
              <td style: align="right"">
               <asp:Button ID="Vardiya_Guncelle_Btn" runat="server" Text="Güncelle" OnClick="Vardiya_Guncelle_Btn_Click" Height="20px" Width="130px" />   </td>
          </tr>
    </table>
</asp:Content>

