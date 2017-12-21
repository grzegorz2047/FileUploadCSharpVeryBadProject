<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjektPISASP.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 441px;
        }
        .auto-style7 {
            color: #FF0000;
        }
        .auto-style8 {
            width: 282px;
        }
        .auto-style9 {
            width: 441px;
            text-align: right;
        }
        .auto-style10 {
            width: 441px;
            text-align: right;
            height: 121px;
        }
        .auto-style11 {
            width: 282px;
            height: 121px;
        }
        .auto-style12 {
            height: 121px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Strona logowania</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    </td>
                <td class="auto-style12">
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Login:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="LoginInput" runat="server" Width="256px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="logVal1" runat="server" CssClass="auto-style7" ErrorMessage="Login jest wymagany!" ControlToValidate="LoginInput"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Hasło:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="PasswordInput" runat="server" Width="258px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="auto-style7" ErrorMessage="Hasło jest wymagane!" ControlToValidate="PasswordInput"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="RegisterButton" runat="server" OnClick="RegisterButton_Click" Text="Rejestracja" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
