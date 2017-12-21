<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserView.aspx.cs" Inherits="ProjektPISASP.UserView" %>

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
            height: 18px;
            text-align: right;
        }
        .auto-style4 {
            height: 18px;
            width: 745px;
        }
        .auto-style5 {
            width: 745px;
        }
        .auto-style6 {
            height: 198px;
            width: 745px;
        }
        .auto-style7 {
            height: 198px;
            text-align: right;
        }
        .auto-style8 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="WelcomeLabel" runat="server">
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="wLabel" runat="server" Text="Witaj, " CssClass="auto-style8"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="LogoutButton" runat="server" OnClick="Button1_Click" Text="Logout" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="65px" Width="351px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="UploadButton" runat="server" Height="66px" OnClick="Button1_Click1" Text="Prześlij" Width="183px" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="AdminPanelButton" runat="server" Enabled="False" OnClick="AdminPanelButton_Click" Text="Panel administracyjny" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
