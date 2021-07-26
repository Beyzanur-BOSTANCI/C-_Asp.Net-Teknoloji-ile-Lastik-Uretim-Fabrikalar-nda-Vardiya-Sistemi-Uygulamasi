<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hakkinda.aspx.cs" Inherits="Vardiya.Hakkında" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/On_Kisim.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>

    <script type="text/javascript">
        $("document").ready(function(){
            $("header nav ul li.unite-wrap").mouseover(function(){
                $("header nav ul li.unite-wrap .unite").css("display","block")
            })
            $("header nav ul li.unite-wrap").mouseleave(function () {
                $("header nav ul li.unite-wrap .unite").css("display", "none")
            })
        })
    </script>
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
        .auto-style2 {
            width: 927px;
            height: 304px;
        }
         .auto-style3 {
            height: 130px;
            margin-left: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bosluk"> </div>
    <div id="wrapper" class="auto-style1">
       <header>
           <div class="logo">
                <img src="Resimler/logo1.jpg" />
           </div>
           <nav>
               <ul>
                   <li>
                       <a href="Anasayfa.aspx">  Anasayfa </a>
                     
                   </li>
                     <li>
                      <a href="Hakkinda.aspx">  Hakkımızda </a> 
                   </li>
                     <li class="unite-wrap">
                        <a href="#.aspx">  Üniteler </a>
                         <div class="unite">
                         <ul>
                             <li><a href="Pisirme.aspx"> Pişirme Ünitesi</a></li>
                             <li><a href="Imalat.aspx"> İmalat Unitesi</a> </li>
                        </ul>               
                             </div>
                  </li>
                     <li>
                       <a href="Iletisim.aspx">  İletişim </a>   
                   </li>
               </ul>
           </nav>
           <div class="oturum-wrap">
               <a href="Giris.aspx">Oturum Aç</a>
           </div>

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       </header>
       <div class="hakkinda">
           <br /><p class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AB Lastik, 1974 yılında dünya çapında bir üretici ve bir marka olmak için yola çıkmıştır. AB Lastik, zengin çeşitteki lastikleri&nbsp;&nbsp;&nbsp;üretim ve pazarlama faaliyetinde bulunup, en yüksek performans gereksinimlerini karşılamak için dizayn edilmiş yapısıyla en&nbsp;&nbsp;&nbsp; yüksek&nbsp;kalitedeki üretimi gerçekleştirerek, Avrupa ve Türkiye pazarlarında yer almaktadır.

           AB Lastik, motosiklet, moped, scooter&nbsp;lastiklerinin yanı sıra, ATV, go-kart, golf arabası lastikleri, tarım lastikleri, özel amaçlı araçların lastiklerinin üretiminde&nbsp;&nbsp;&nbsp; uzmanlaşmıştır.

           AB Lastik, özel tasarım ve kullanım amacına göre özel lastiklerin geliştirilmesine kendini adamıştır. Müşterilerinin tüm&nbsp;gereksinimlere butik tarzı üretim yaparak pazarda rekabet üstünlüğü sağlamıştır.<br />
           </p><br />
&nbsp;&nbsp;&nbsp; <img src="Resimler/Lastik14.jpg" class="auto-style2" /></div>
   </div>
    </form>
</body>
</html>
