<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Imalat.aspx.cs" Inherits="Vardiya.Imalat1" %>

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
             width: 246px;
             height: 197px;
         }
         .auto-style2 {
             height: 81px;
             margin-left: 30px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="bosluk"> </div>
    <div id="wrapper" class="auto-style3">
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

       </header>
  <div class="pisirme-resim"><br />
      <br /><br />
      <br />
      <br /><br />
      <img class="auto-style1" src="Resimler/lastik19.jpg" /></div>
           <div class="pisirme-yazi">
               &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <h3 style="box-sizing: border-box; font-family: &quot;Helvetic Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; margin: 0px 0px 20px; font-size: 1.625rem; line-height: 2rem; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İmalat</h3>
               <p class="auto-style2" style="box-sizing: border-box; font-family: arial, sans-serif; font-size: 16px; line-height: 1.375; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; margin-right: 0px; margin-top: 0px; margin-bottom: 20px;">
                   <span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Lastiğinizin kauçuğunda 30 farklı kauçuk türü, dolgu malzemesi ve başka malzemeler kullanılır. Bu malzemeler siyah, sakıza benzer bir bileşim oluşturacak şekilde büyük karıştırıcılarda karıştırılır ve buradan ezme işlemine gönderilir.</span></p>
               <p class="auto-style2" style="box-sizing: border-box; font-family: arial, sans-serif; font-size: 16px; line-height: 1.375; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; margin-right: 0px; margin-top: 0px; margin-bottom: 20px;">
                   <span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Soğutulan kauçuk, lastiğin temel yapısını oluşturacak şeritler halinde kesilir. Ezme aşamasında bazıları başka bir tür kauçukla kaplanacak olan diğer lastik bileşenleri hazırlanır.</span></p>
               <p class="auto-style2" style="box-sizing: border-box; font-family: arial, sans-serif; font-size: 16px; line-height: 1.375; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; margin-right: 0px; margin-top: 0px; margin-bottom: 20px;">
                   <span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Artık lastiğin içten dışa yapım aşamasına geçiyoruz. Lastik yapım makinesine tekstil bileşenleri, çelik kuşaklar, damak, kat, sırt ve diğer bileşenler konulur.&nbsp;Sonuçta “ ham bir lastik” elde edilir. Lastik son halini almaya başlamıştır.</span></p>
  
           </div>
   </div>
    </form>
</body>
</html>
