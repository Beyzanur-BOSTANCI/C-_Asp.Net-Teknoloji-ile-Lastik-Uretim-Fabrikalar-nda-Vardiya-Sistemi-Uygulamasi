<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Mesai_Kayit.aspx.cs" Inherits="Vardiya.Mesai_Kayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            margin-top: 0;
        }
        .auto-style12 {
            width: 261px;
            height: 236px;
            margin-top: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="auto-style11">
         <tr>
             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Ünite Seçiniz"></asp:Label></td>
            <td>:</td>
            <td>
                 <asp:DropDownList ID="Unite_List" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unite_Adi" DataValueField="Unite_Adi" Height="20px" Width="170px" OnSelectedIndexChanged="Unite_List_SelectedIndexChanged1">
                 </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VardiyaSistemiConnectionString %>" SelectCommand="SELECT [Unite_Adi] FROM [Unite_Tbl]"></asp:SqlDataSource>
             </td>
        </tr>
          <tr><td></td></tr>
        <tr>
            <td> </td>
            <td></td>
            <td></td><td style: align="right">
            <asp:Button ID="Isim_Getir" runat="server" Text="İsimleri Getir" OnClick="Isim_Getir_Click" />
           
            </td></tr><tr><td></td></tr>
        <tr><td></td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="İsim Seç"></asp:Label></td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="Isim_List" runat="server" Height="20px" Width="170px" CssClass="auto-style11"></asp:DropDownList>
            </td>
    
            </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td></td>

          <td  style: align="right" >
              &nbsp;</td>
            
        </tr>
        <tr><td></td></tr>
        <tr><td></td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Yıl Seç"></asp:Label></td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="Yil_List" runat="server" Height="20px" Width="170px">
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr><td></td></tr>

        <tr><td></td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Ay Seç "></asp:Label></td>
            <td>:</td>
            <td> <asp:DropDownList ID="Ay_List" runat="server" Height="20px" Width="170px">
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
        </tr>
        <tr>
            <td> </td>
        </tr>
        <tr><td></td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Gün Seç"></asp:Label></td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="Gun_List" runat="server" Height="20px" Width="170px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr><td></td></tr>
        <tr><td></td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Kaç Saat Mesai Yapılacak"></asp:Label></td>
            <td>:</td>
            <td>
                <asp:DropDownList ID="Mesai_list" runat="server" Height="20px" Width="170px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
     <tr>
            <td> </td>
               </tr>
          <tr>
              <td></td>
              <td>
                  <asp:Label ID="Label7" runat="server" Text=" "></asp:Label>
              </td>
              <td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
              <td></td>
              <td style: align="right">
                  <asp:Button ID="Kaydet_Btn" runat="server" Text="Kaydet" OnClick="Kaydet_Btn_Click" Height="25px" Width="170px" /></td>
          </tr>
          <tr>
              <td>

                  <br />
                  <br />

              </td>
          </tr>
          </table>
    <table>
        <tr>
            <td> 
                <asp:TextBox ID="Isci_Id_Tut" runat="server" Width="29px" Visible="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td> </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="280px" Width="422px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>   &nbsp;
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" Height="280px" Width="422px" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="Mesai_Id" HeaderText="Mesai ID" InsertVisible="False" ReadOnly="True" SortExpression="Mesai_Id" />
                        <asp:BoundField DataField="Isci_Id" HeaderText="İşçi ID" SortExpression="Isci_Id" />
                        <asp:BoundField DataField="Yil_Adi" HeaderText="Yıl" SortExpression="Yil_Adi" />
                        <asp:BoundField DataField="Ay_Adi" HeaderText="Ay" SortExpression="Ay_Adi" />
                        <asp:BoundField DataField="Gun_Adi" HeaderText="Gün" SortExpression="Gun_Adi" />
                        <asp:BoundField DataField="Mesai_Saati" HeaderText="Mesai Saati" SortExpression="Mesai_Saati" />
                    </Columns>
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

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VardiyaSistemiConnectionString %>" SelectCommand="SELECT * FROM [Mesai_Tbl]"></asp:SqlDataSource>

            </td>
             <td>

                <img src="Resimler/Lastik12.png" class="auto-style12" />
            </td>
        </tr></table>
    <table>
          <tr>
              <td>
                  <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
              </td>
          </tr>
    </table>
</asp:Content>
