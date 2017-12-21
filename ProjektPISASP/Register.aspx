<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProjektPISASP.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 379px;
            text-align: right;
        }
        .auto-style3 {
            width: 379px;
            height: 23px;
            text-align: right;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 379px;
            height: 158px;
            text-align: right;
        }
        .auto-style6 {
            height: 158px;
        }
        .auto-style7 {
            height: 158px;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style7">
                        Rejestracja konta</td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Username:</td>
                    <td>
                        <asp:TextBox ID="usernameId" runat="server" OnTextChanged="TextBox1_TextChanged" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernameId" ErrorMessage="Nick jest wymagany." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">E-mail:</td>
                    <td>
                        <asp:TextBox ID="emailId" runat="server" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailId" ErrorMessage="Email jest wymagany" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Password:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="passId" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passId" ErrorMessage="Hasło jest wymagane" ForeColor="Red"></asp:RequiredFieldValidator>
                        .</td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Powtórz password:</td>
                    <td>
                        <asp:TextBox ID="repeatPassId" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="repeatPassId" ErrorMessage="Powtórzenie hasła jest wymagane." ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passId" ControlToValidate="repeatPassId" ErrorMessage="Hasła muszą się zgadzać."></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Wyślij" Width="186px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
