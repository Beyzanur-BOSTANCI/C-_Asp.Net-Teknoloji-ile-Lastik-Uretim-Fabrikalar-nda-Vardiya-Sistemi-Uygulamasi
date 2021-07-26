<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="Vardiya.Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
              body {
      height:100%;
      background-image: url('/Resimler/Lastik4.jpg');
      background-repeat:repeat;
      background-position:center;
      background-size:cover;
      font:18px Calibri,sans-serif;
    }
    #container{
      margin:220px auto;
      width:200px;
    }
    .text-user, .text-pass, .login-button {
      width:200px;
      height:36px;
      box-shadow:0px 1px 13px #000
    }
         .text-user {
             background-image:url("/Resimler/giris1.png");
             margin: 0 auto;
         }



         .text-pass {
             background-image:url("/Resimler/sifre2.png");  
             margin: 10px auto;
         }
    .text-field {
      float:right;
      width:138px;
      height:26px;
      border:none;
      padding:5px 10px;
    }
    .login-button {
      background:#0094ff;
      margin:1px auto 0px;
      text-align:center;
      color:#FFF;
      border:none;
      border-top-left-radius:4px;
      border-bottom-left-radius:4px;
      -webkit-transition:background 0.5s;
    }
    .login-button:hover {
      background:#DC3F42 /*#81c356*/;
    }
    #container a {
      color:#7ab752;
      text-decoration:none;
      text-shadow:0px 1px 5px #000;
      -webkit-transition:color 0.5s
    }
    #container a:hover { color:#FFF }
 

        </style>
</head>
<body>
    <form id="form1" runat="server">
        
      <div id="container">
              
                <div class="text-user">
                    <asp:TextBox ID="txtUser" runat="server" PlaceHolder="Username" TabIndex="1" class="text-field"></asp:TextBox>
                &nbsp;
                </div>
                <div class="text-pass">
                    <asp:TextBox ID="txtPass" runat="server" PlaceHolder="Password" TextMode="Password" TabIndex="2" class="text-field"></asp:TextBox>
                </div>
                <asp:Button ID="btnLogin" runat="server" Text="GİRİŞ" TabIndex="3" class="login-button" onclick="btnLogin_Click" />
           
                <asp:Label ID="Hata_Mesaji" runat="server" Text=""></asp:Label>
           
            </div>
        
    </form>
</body>
</html>
