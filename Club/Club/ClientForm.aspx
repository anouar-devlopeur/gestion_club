<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientForm.aspx.cs" Inherits="Club.ClientForm" %>

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
          <%--  <ul runat="server" class="navbar-nav ml-auto">
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
                        <form class="myForm text-center" runat="server">
                            <header  style="font-family:'Comic Sans MS';">Welcom to your account</header>
                            <div class="form-group">
                                <i class="fas fa-lock"></i>
                                <%--  <input class="myInput" type="password" id="password" placeholder="Password" required> --%>

                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                            </div>

                            <div class="form-group">
                                <i class="fas fa-envelope"></i>


                                <asp:GridView ID="GridView1" runat="server" BorderStyle="None" BorderWidth="0px" CssClass="gridv" BorderColor="White" CellPadding="1" CellSpacing="10" HorizontalAlign="Justify" Width="100%">
                                    <AlternatingRowStyle BorderStyle="None" />
                                    <EditRowStyle BorderStyle="None" />
                                    <EmptyDataRowStyle BorderStyle="None" />
                                    <FooterStyle BorderStyle="None" />
                                    <HeaderStyle BorderStyle="None" BorderColor="White" />
                                    <PagerStyle BorderStyle="None" />
                                    <RowStyle BorderStyle="None" />
                                    <SelectedRowStyle BorderStyle="None" />
                                    <SortedAscendingCellStyle BorderStyle="None" />
                                </asp:GridView>
                            </div>
                            <div class="form-group">
                                <i class="fas fa-envelope"></i>

                                <%--   <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>--%>
                            </div>
                            <div class="form-group">
                                <i class="fas fa-lock"></i>
                                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true" CssClass="myInput" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Value="0">--category--</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <i class="fas fa-lock"></i>
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="myInput" AppendDataBoundItems="true" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                    <asp:ListItem Value="0">--sous category--</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                            <div>
                                <%-- <input type="submit" class="butt" value="Edite">--%>
                                <asp:Button ID="Button1" runat="server" CssClass="butt" Text="ADDNEW" OnClick="Button1_Click" />
                                <br />
                                <br />
                                <%--  <input type="submit" class="butt" value="Delete">--%>
                                <asp:Button ID="Button3" runat="server" CssClass="butt" Text="DELETE" OnClick="Button3_Click" />
                            </div>
                            <br />
                            <div>

                                <asp:Button ID="Button2" runat="server" Text="Logout" CssClass="butt" OnClick="Button4_Click" />
                            </div>

                    <asp:Label ID="Label4" runat="server" Text="Prix:   " Font-Size="Larger"></asp:Label>          <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="myRightCtn">
                        <div class="box">
                            <header>
                                <img src="Img/welcome_PNG64%20(1).png" />
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
