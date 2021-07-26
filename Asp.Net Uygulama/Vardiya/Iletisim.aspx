<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Vardiya.Iletisim" %>

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
    .auto-style3 {
           
            margin-left: 37px;
            color:#ff0000;

        }
      .auto-style2 {
           
            margin-left: 37px;
            

        }
          </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
           <br />
           <br />
           <p class="auto-style3"> &nbsp; Adres : </p>
           <p class="auto-style2"> &nbsp;</p>
           <p class="auto-style2"> Ahi Evran Cd. 42 Maslak Ofis 1 Kat:3 No:2 Maslak Sarıyer Istanbul</p>
   
       <p class="auto-style3"> &nbsp;&nbsp;</p>
           <p class="auto-style3"> &nbsp;</p>
           <p class="auto-style3"> &nbsp;Telefon : </p>
           <p class="auto-style2"> &nbsp;</p>
           <p class="auto-style2">+90 (212) 265 0680 </p>
   
           <p class="auto-style3"> &nbsp;</p>
           <p class="auto-style3"> &nbsp;</p>
           <p class="auto-style3"> &nbsp; E-Posta : </p>
           <p class="auto-style2"> &nbsp;</p>
           <p class="auto-style2"> info.ab.com</p>
  
           <p class="auto-style3"> &nbsp;&nbsp;</p>
           <p class="auto-style3"> &nbsp;</p>
           <p class="auto-style3"> &nbsp;Müşteri Hizmetleri : </p>
           <p class="auto-style2"> &nbsp;</p>
           <p class="auto-style2">musteriHizmetleri@ab.com</p>
  
       
       </div>
   
    </div>
     </div>   
    </form>
</body>
</html>
