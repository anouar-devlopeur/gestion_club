<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Club.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <nav id="nav" class="navbar navbar-expand-lg bg-secondary  fixed-top">
        <a class="navbar-brand text-light" href="Home.aspx">
          AnubisClub
        </a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon">
         </span>
    </button>

        <div  class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="n nav-link text-light" href="#slide" >Home</a>
                </li>
                <li class="nav-item">
                    <a class="n nav-link text-light"  href="#about">Services</a>
                </li>
                <li class="nav-item">
                    <a class="n nav-link text-light" href="#cont">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="Log in.aspx">Log in</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="Signup.aspx" >Sign up</a>
                </li>

            </ul>

        </div>
    </nav>
     

    <form id="form1" runat="server">

    
    <!--Sectio1-->

    <section id="slide" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#slide" data-slide-to="0" class="active"></li>
            <li data-target="#slide" data-slide-to="1"></li>
            <li data-target="#slide" data-slide-to="2"></li>
            <li data-target="#slide" data-slide-to="3"></li>
            <li data-target="#slide" data-slide-to="4"></li>
            <li data-target="#slide" data-slide-to="5"></li>

        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Img/active-woman-being-full-energy-jumps-high-air-wears-sportsclothes-prepares-sport-competitions.jpg" alt="1">
            </div>
            <div class="carousel-item ">
                <img src="Img/female-teenager-standing-stance-punching-studio.jpg" alt="2">
            </div>
            <div class="carousel-item ">
                <img src="Img/sport-flat-lay-background-pink.jpg" alt="3">
            </div>
            <div class="carousel-item ">
                <img src="Img/woman-professional-swimmer-swimming-pool.jpg" alt="4">
            </div>
            <div class="carousel-item ">
                <img src="Img/bunch-flowers-leaves-table.jpg" alt="5">
            </div>
            <div class="carousel-item ">
                <img src="Img/shine-wedding-altar-newlyweds-stands-backyard-decorated-with-balloons.jpg" alt="6">
            </div>
        </div>
        <a class="carousel-control-prev" href="#slide" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#slide" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>

    </section>
    <!--start about us-->
    <section id="about">
        <h2 class="text-center font-weight-blod text-dark ">Services</h2>

        <hr style="background-image:linear-gradient(45deg, #f046ff, #9b00e8);">

        <div class="container">
            <div class="row">
                <div class="col-lg-6 ">
                     <video  width="100%" height="100%" autoplay muted loop>

                      <source src="Img/Vidéo%20présentation%20Club%20Moving%20Rouen.mp4" type="video/mp4">
                     </video>
                  
                </div>
                <div class="col-lg-6 ">
                 
                   <h3 id="flip" class="text-center text-light ">About AnubisClub</h3>
                    <p class="color" id="panel">
                        A restaurant (French: [ʁɛstoʁɑ̃] (About this soundlisten)), or an eatery, is a business that prepares and serves food and drinks to customers.[1] Meals are generally served and eaten on the premises, but many restaurants also offer take-out and food delivery services. Restaurants vary greatly in appearance and offerings, including a wide variety of cuisines and service models ranging from inexpensive fast food restaurants and cafeterias, to mid-priced family restaurants, to high-priced luxury establishments.

                        In Western countries, most mid-to high-range restaurants serve alcoholic beverages such as beer and wine. Some restaurants serve all the major meals, such as breakfast, lunch, and dinner (e.g., major fast food chains, diners, hotel restaurants, and airport restaurants). Other restaurants may serve only a single meal (for example, a pancake house may only serve breakfast) or they may serve two meals (e.g., lunch and dinner).

                    </p>
                       
                </div>
            </div>
        </div>

    </section>
    
    <!--startfooter-->
    <section id="cont" class="contact">
        <h2 class="text-center font-weight-blod    text-light  ">Contactus Us</h2>

        <hr style="background-color:white;">

        <div  id="color2" class="container">
            <div class="row">
                <div  class="col-lg-6">
                    <asp:Label ID="Label2" runat="server" Text="To"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" CssClass="butt" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="From"></asp:Label>
&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2"  CssClass="butt" runat="server"></asp:TextBox>
&nbsp;<br />
                    <asp:Label ID="Label5" runat="server" Text="Subject"></asp:Label>
&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3"  CssClass="butt" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Message"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4"  CssClass="butt" runat="server" Height="87px" ></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server"  CssClass="butt" OnClick="Button1_Click1" Text="Send " Width="109px" />
               <asp:Table ID="Table1" runat="server">


               </asp:Table>
               
       <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
                
                <div class="col-lg-6">
                  
                    <p>Club</p>
                    <p>Adresse: Safi QU Hopital </p>
                    <p>Telephone: 0528332202</p>
                    <%-- <p>Club</p>--%>
                </div>
            </div>
            
        </div>

    </section>
    
<footer id="color1" class="footter">
  
  
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2022 Copyright:
    <a class="text-white" href="https://www.facebook.com/gamal.mouhssine.7/">ClubAnibous.com</a>
  </div>
  <!-- Copyright -->
</footer>
    <script src="JavaScript.js"></script>
    <script src="JavaScript1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    </form>
</body>
</html>
