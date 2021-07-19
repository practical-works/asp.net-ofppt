<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASP_TP6.Ex1.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: xx-large;
        }
        .style3
        {
            font-size: xx-large;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    Nom d&#39;utilisateur </td>
                <td>
                    <asp:TextBox ID="txt_username" runat="server" CssClass="style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Mot de passe </td>
                <td>
                    <asp:TextBox ID="txt_password" runat="server" CssClass="style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="lbl_error" runat="server" style="color: #FF0000"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btn_login" runat="server" Text="Se connecter" CssClass="style2" 
                        onclick="btn_login_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
