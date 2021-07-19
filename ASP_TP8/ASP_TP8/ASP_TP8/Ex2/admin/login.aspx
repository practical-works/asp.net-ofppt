<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASP_TP8.Ex2.admin.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paneau d'administration</title>
    <link href="../style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .login
        {
            width: 50%;
            margin: 50px auto;
        }
        .maintable
        {
            width: 100%;
        }
    </style>
</head>
<body style="background-color:skyblue">>
    <form id="form1" runat="server">
    <div class="login">
        
        <h1 style="text-align: center">
            Authentification</h1>
        <table class="maintable" align="center">
            <tr>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    <asp:Label ID="lbl_error" runat="server" 
                        style="color: #FF0000; text-align: left;"></asp:Label>
                    <br />
                    <asp:Label ID="lbl_info" runat="server" 
                        style="color: #009933; text-align: left;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style15" style="text-align: right">
                    Nom d&#39;utilisateur</td>
                <td class="style16" style="text-align: left">
                    <asp:TextBox ID="txt_login" runat="server" CssClass="textbox" 
                        style="text-align: left"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15" style="text-align: right">
                    Mot de passe</td>
                <td class="style16" style="text-align: left">
                    <asp:TextBox ID="txt_pass" runat="server" CssClass="textbox" 
                        style="text-align: left" TextMode="Password"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15" style="text-align: right">
                    &nbsp;</td>
                <td class="style16" style="text-align: left">
                    <asp:CheckBox ID="cb_remember" runat="server" Text="Se souvenir de moi " />
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="btn_login" runat="server" CssClass="actionbutton" 
                        Text="Connexion" Width="125px" />
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
