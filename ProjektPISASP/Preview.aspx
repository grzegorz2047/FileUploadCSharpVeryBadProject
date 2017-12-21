<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preview.aspx.cs" Inherits="ProjektPISASP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 788px;
        }
        .auto-style3 {
            width: 247px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">
                        <asp:Button ID="UserViewButton" runat="server" OnClick="Button1_Click2" Text="Strefa użytkownika" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="LogoutButton" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Wyloguj" />
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="350px" Width="629px" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                </Columns>
            </asp:GridView>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Usuń użytkownika:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="DeleteBox" runat="server" OnTextChanged="TextBox1_TextChanged" Width="223px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" OnClick="Button1_Click1" Text="Usuń" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
