<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pisirme.aspx.cs" Inherits="Vardiya.Pisirme" %>

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
            width: 247px;
            height: 200px;
        }
        .auto-style2 {
            height: 64px;
            margin-left: 37px;
        }
        .auto-style3 {
            height: 10px;
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
                      <a href="#.aspx">  Hakkımızda </a> 
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
      <br /><br /><br />
      <img class="auto-style1" src="Resimler/lastik19.jpg" /></div>
           <div class="pisirme-yazi">
               &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <h3 style="box-sizing: border-box; font-family: &quot;Helvetic Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; margin: 0px 0px 20px; font-size: 1.625rem; line-height: 2rem; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pişirme</h3>
               <p class="auto-style2" style="box-sizing: border-box; font-family: arial, sans-serif; font-size: 16px; line-height: 1.375; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; margin-right: 0px; margin-top: 0px; margin-bottom: 20px;">
                   Ardından ham lastik pişirme makinesinde&nbsp;sıcak kalıplarla vulkanize edilir. Lastiğin tüm parçaları bir araya sıkıştırılır ve sırt deseni ile üreticinin yanak işaretleri de dâhil olmak üzere lastiğe son şekli verilir.</p>
               <p class="auto-style2" style="box-sizing: border-box; font-family: arial, sans-serif; font-size: 16px; line-height: 1.375; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; margin-right: 0px; margin-top: 0px; margin-bottom: 20px;">
                   <span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Eğitimli denetleme uzmanları özel makineler kullanarak her lastiği sevkiyattan önce en küçük leke veya kusura karşı inceleyecektir.</span></p>
               <p class="auto-style2" style="box-sizing: border-box; font-family: arial, sans-serif; font-size: 16px; line-height: 1.375; color: rgb(34, 34, 34); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; margin-right: 0px; margin-top: 0px; margin-bottom: 20px;">
                   <span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Buna ek olarak, olası iç zayıflıklar veya bozuklukları kontrol etmek için hattan rastgele seçilen lastikler x-ışınlarından geçirilir. Kalite kontrol mühendislerimiz hattan rastgele seçtikleri lastikleri keserek, Goodyear standartlarına uyup uymadıklarını kontrol eder.</span></p>
  </div>
   </div>
    </form>
</body>
</html>
