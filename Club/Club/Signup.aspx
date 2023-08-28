<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Club.Signup" %>

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
          <%--  <ul class="navbar-nav ml-auto">
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
        <%--<div class="myCard">--%>
        <div class="row">
            <div class="col-md-6">
                <div class="myLeftCtn">
                    <form class="myForm text-center" runat="server">
                        <header  style="font-family:'Comic Sans MS';">Create new account</header>
                        <div class="form-group">
                            <i class="fas fa-user"></i>
                            <%--   <input class="myInput" type="text" placeholder="Cin" id="username" required/>--%>
                            <asp:TextBox ID="TextBox1" PlaceHolder="Cin" CssClass="myInput" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <i class="fas fa-user"></i>
                            <%--                                <input class="myInput" type="text" placeholder="Fullname" id="username" required/>--%>
                            <asp:TextBox ID="TextBox2" PlaceHolder="Firstname" CssClass="myInput" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <i class="fas fa-user"></i>
                            <%--                                <input class="myInput" type="text" placeholder="Fullname" id="username" required/>--%>
                            <asp:TextBox ID="TextBox8" PlaceHolder="Lastname" CssClass="myInput" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <i class="fas fa-envelope"></i>
                            <%--                                <input class="myInput" placeholder="Email" type="text" id="email" required/>--%>
                            <asp:TextBox ID="TextBox3" PlaceHolder="Email" CssClass="myInput" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                        </div>

                        <div class="form-group">
                            <i class="fas fa-lock"></i>
                            <%--                                <input class="myInput" type="password" id="password" placeholder="Password" required/>--%>
                            <asp:TextBox ID="TextBox4" PlaceHolder="Password" TextMode="Password" CssClass="myInput" runat="server" AutoPostBack="True"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>

                        </div>    
                        <div class="form-group">
                            <i class="fas fa-lock"></i>
                            <%--                                <input class="myInput" type="password" id="password" placeholder="Confirm password" required/>--%>
                            <asp:TextBox ID="TextBox5" PlaceHolder="Confirm password" TextMode="Password" CssClass="myInput" runat="server" AutoPostBack="True"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>

                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="*"></asp:CompareValidator>

                        </div>

                        <div class="form-group">
                            <i class="fas fa-user"></i>
                            <%--                                <input class="myInput" type="tel" placeholder="Telephone"  id="username" required/>--%>
                            <asp:TextBox ID="TextBox6" PlaceHolder="Telphone" CssClass="myInput" runat="server" TextMode="Phone"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <i class="fas fa-lock"></i>
                            <%--<input class="myInput" type="date" id="password" placeholder="Confirm password" required/>--%>
                            <asp:TextBox ID="TextBox7" PlaceHolder="Date" CssClass="myInput" runat="server"  TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <i class="fas fa-lock"></i>
                            <div class="btn-group" role="group">
                                <%--<button type="button" class="btn ">Male</button>
                                    <button type="button" class="btn ">Female</button>--%>
                                <%-- <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Male" />
                                    <asp:Button ID="Button2" CssClass="btn" runat="server" Text="Female" />--%>
                                <asp:RadioButton ID="RadioButton1" CssClass="btn" Text="Male" runat="server" />
                                <asp:RadioButton ID="RadioButton2" CssClass="btn" Text="Female" runat="server" />
                            </div>
                        </div>

                        <div class="form-group">
                            <i class="fas fa-lock"></i>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="myInput" AppendDataBoundItems="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem Value="0">--Category--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <i class="fas fa-lock"></i>
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="myInput" AppendDataBoundItems="true" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                <asp:ListItem Value="0">--Souscategory--</asp:ListItem>
                            
                            </asp:DropDownList>
                        </div>

                        <%--                            <input type="submit" class="butt" value="CREATE ACCOUNT">--%>
                        <asp:Button ID="Button3" CssClass="butt" runat="server"  Text="CREATE ACCOUNT" OnClick="Button3_Click" />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <div class="myRightCtn">
                    <div class="box">
                        <header>Sign up!</header>

                        <p>
                            We are delighted to have you among us. On behalf of all the members and the management, 
                                we would like to extend our warmest welcome and good wishes!
                        </p>

                    </div>

                </div>
            </div>
        </div>
        <%--</div>--%>
    </div>


    <script src="JavaScript.js"></script>
    <script src="JavaScript1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
