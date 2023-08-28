<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Club.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
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


    <form runat="server">
        <div align="center" style="margin-top: 80px">
            <label>Category</label>
            <asp:DropDownList ID="DropDownList1" CssClass="butt" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="0">--Category--</asp:ListItem>
            </asp:DropDownList><label>Sousategory</label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="butt" AppendDataBoundItems="true" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem Value="0">--Souscategory--</asp:ListItem>
            </asp:DropDownList><label>Client</label>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="butt" AppendDataBoundItems="true" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem Value="0">--CIN Client--</asp:ListItem>
            </asp:DropDownList>
                <asp:Button ID="Button2" CssClass="butt" runat="server" Text="Log out" OnClick="Button2_Click" />  
        </div>
        <div align="center" style="margin-top: 100px">
            <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" BorderStyle="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound1">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ControlStyle-Width="60px" ControlStyle-Height="30px">
                        <ControlStyle BackColor="Red" Font-Size="Large" BorderStyle="None" />
                        <ItemStyle BorderStyle="None" />
                    </asp:CommandField>
                </Columns>
                <EditRowStyle BorderStyle="None" />
                <HeaderStyle CssClass="header" BorderStyle="None"></HeaderStyle>

                <PagerStyle CssClass="pager"></PagerStyle>

                <RowStyle CssClass="rows"></RowStyle>
            </asp:GridView>
          
        </div>
    
    </form>



    <script src="JavaScript.js"></script>
    <script src="JavaScript1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
