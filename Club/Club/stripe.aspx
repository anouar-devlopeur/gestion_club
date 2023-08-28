<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stripe.aspx.cs" Inherits="Club.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
     <nav runat="server" id="nav" class="navbar navbar-expand-md   fixed-top">
        <a class="navbar-brand text-light" href="#Home">AnubisClub
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#cnav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div runat="server" id="cnav" class="collapse navbar-collapse">
            <ul runat="server" class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link text-light">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="#hhh">Contact Us</a>
                </li>

            </ul>

        </div>
    </nav>

    <div class="container">
        <div class="myCard">
            <div class="row">
                <div class="col-md-6">
                    <div class="myLeftCtn">
                        <form id="form1" class="myForm text-center" runat="server">
                            <header style="font-family:'Comic Sans MS';">Choose your payment </header>
                            <div class="form-group">
                                <i class="fas fa-lock"></i>
                                <%--  <input class="myInput" type="password" id="password" placeholder="Password" required> --%>

                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                            </div>

                           <%-- <div class="form-group">
                                <i class="fas fa-envelope"></i>

                                <asp:Button ID="Button1" runat="server" Text="Cash"  CssClass="butt" OnClick="Button1_Click"  />
                               
                            </div>--%>
                            
                            <div class="form-group">
                                <i class="fas fa-envelope"></i>
                                
                                     <button type="submit" class="butt">Mastercard</button>
                                    
                            </div>

                
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="myRightCtn">
                        <div class="box">
                            <header>
                            <img src="Img/pay%20(1).png" />
                                
                            </header>


                        </div>



                    </div>
                </div>
            </div>
        </div>
    </div>
      <script src="https://js.stripe.com/v3/"></script>
<script>

    var stripe = Stripe('pk_test_TYooMQauvdEDq54NiTphI7jx');
    var form = document.getElementById("form1");
    form.addEventListener('submit', function (e) {
        e.preventDefault();
        stripe.redirectToCheckout({

            sessionId: "<%=sessionId%>"

        });
    })
</script>

    <script src="JavaScript.js"></script>
    <script src="JavaScript1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
