<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paye.aspx.cs" Inherits="Club.mastercard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>
    
      <nav runat="server" id="nav" class="navbar navbar-expand-md   fixed-top">
        <a class="navbar-brand text-light" href="index.html ">AnubisClub
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#cnav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div runat="server" id="cnav" class="collapse navbar-collapse">
           <%-- <ul runat="server" class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link text-light">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="#hhh">Contact Us</a>
                </li>
            </ul>--%>

        </div>
    </nav>
        
    <div class="container">
        <div class="myCard">
            <div class="row">
                <div class="col-md-6">
                    <div class="myLeftCtn">
                        <form id="form2" class="myForm text-center" runat="server">
                            <header style="font-family:'Comic Sans MS';">Choose your payment </header>                                                     
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                               <div class="form-group">
                                <i class="fas fa-envelope"></i>

                                   <asp:Button ID="Button1" runat="server" CssClass="butt" Text="mastercard" OnClick="Button1_Click3" />
                               
                            </div>

                          
                            <div class="form-group">
                                <i class="fas fa-envelope"></i>
                                  <asp:Button ID="Button2" CssClass="butt" runat="server" Text="Cash" OnClick="Button2_Click3" />
                                 
                               
                            </div>
                                        
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </form>
                    </div>
                </div>
                <div class="auto-style1">
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
  
    

    <script src="JavaScript.js"></script>
    <script src="JavaScript1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
