<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASP_TP9.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Authentification - SiteWeb.com</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
        }
        td
        {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Nom d&#39;utilisateur</td>
                <td>
                    <asp:TextBox ID="TextBox_username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Mot de passe</td>
                <td>
                    <asp:TextBox ID="TextBox_password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button_login" runat="server" onclick="Button_login_Click" 
                        Text="Se connecter" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label_error" runat="server" 
                        style="color: #FF0000; font-weight: 700" 
                        Text="La combinaison du nom d'utilisateur et du mot de passe est incorrecte" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
