<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log in.aspx.cs" Inherits="Club.Log_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <nav id="nav" class="navbar navbar-expand-md   fixed-top">
        <a class="navbar-brand text-light" href="#Home">AnubisClub
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#cnav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div id="cnav" class="collapse navbar-collapse">
           <%-- <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link text-light">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="#hhh">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="#hhh">Log in</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light">Sign up</a>
                </li>

            </ul>--%>

        </div>
    </nav>
    <div class="container">
        <div class="myCard">
            <div class="row">
                <div class="col-md-6">
                    <div class="myLeftCtn">
                        <form class="myForm text-center" runat="server">
                            <header  style="font-family:'Comic Sans MS';">Login to account </header>


                            <div class="form-group">
                                <i class="fas fa-envelope"></i>

                                <asp:TextBox ID="TextBox3" PlaceHolder="Cin" CssClass="myInput" runat="server"></asp:TextBox><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" EnableClientScript="False" ErrorMessage="*" ToolTip="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="Cin wrong" ForeColor="Red"></asp:Label>
                            </div>

                            <div class="form-group">
                                <i class="fas fa-lock"></i>
                                <asp:TextBox ID="TextBox4" PlaceHolder="Password" TextMode="Password" CssClass="myInput" runat="server"></asp:TextBox><br />
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" EnableClientScript="False" ToolTip="Required" ForeColor="Red" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                <asp:Label ID="Label2" runat="server" Text="Password wrong" ForeColor="Red"></asp:Label>
                            </div>
                            <asp:Button ID="Button1" runat="server" CssClass="butt" Text="LOGIN" OnClick="Button1_Click1" />

                            <br />
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Signup.aspx">Create Account</asp:HyperLink>


                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="myRightCtn">
                        <div class="box">
                            <header>Log in! </header>
                            <p>
                                “On behalf of all of us, welcome aboard! We believe you will be a t
                                errific asset to our team, and we look forward to your input!”
                            </p>

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
