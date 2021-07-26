<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Vardiya.Anasayfa" %>

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
              width: 300px;
              height: 301px;
          }
          .auto-style2 {
              width: 299px;
              height: 300px;
          }
          .auto-style3 {
              width: 295px;
              height: 301px;
          }
      </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bosluk"> </div>
   <div id="wrapper">
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
       <div class="banner">
       </div>
       <div class="kesit1">
           <img class="auto-style1" src="Resimler/Lastik16.png" /></div>
       <div class="kesit3">
           <img src="Resimler/Lastik18.png" class="auto-style3" />
       </div>
       <div class="kesit2">
           <img src="Resimler/Lastik17.png" class="auto-style2" />
       </div>
       <div class="referans"></div>
       <div class="sosyalmedya">
       </div>
   </div>
    </form>
</body>
</html>
