<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASP_TP6.Ex2.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: xx-large;
            font-family: "Calibri Light";
        }
        .style3
        {
            font-size: xx-large;
            text-align: right;
            font-family: "Calibri Light";
            background-color: #CCCCCC;
        }
        .style4
        {
            background-color: #FFFFFF;
            color: #FFFFFF;
        }
        .style5
        {
            font-size: xx-large;
            text-align: center;
            background-color: #99CCFF;
        }
        .style6
        {
            font-family: "Calibri Light";
        }
        .style7
        {
            font-size: xx-large;
            text-align: right;
            background-color: #99CCFF;
            font-family: "Calibri Light";
        }
        .style8
        {
            font-size: xx-large;
            font-family: "Calibri Light";
            color: #000000;
        }
        .style9
        {
            font-size: xx-large;
            text-align: right;
            font-family: "Calibri Light";
            background-color: #CCCCCC;
            color: #000000;
        }
        .style11
        {
            background-color: #FFFFFF;
            color: #000000;
        }
    </style>
</head>
<body style="font-family: 'courier new'">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" style="border-style: solid; border-width: thin">
            <tr>
                <td class="style7" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Nom d&#39;utilisateur </td>
                <td class="style4">
                    <asp:TextBox ID="txt_username" runat="server" CssClass="style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Mot de passe&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_password" runat="server" CssClass="style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="btn_login" runat="server" Text="Se connecter" CssClass="style2" 
                        onclick="btn_login_Click" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    <span class="style2">Page visitée </span>
                    <asp:Label ID="lbl_visites" runat="server" CssClass="style8"></asp:Label>
                    <span class="style2">&nbsp;fois au total par </span>
                    <span class="style8"><asp:Label ID="lbl_visiteurs" runat="server" 
                        CssClass="style8"></asp:Label>
                    visiteur(s).<br />
                    <asp:Label ID="lbl_visiteurs_actifs" runat="server" CssClass="style8"></asp:Label>
&nbsp;visiteur(s) actuellement actifs.</span></td>
            </tr>
            <tr>
                <td class="style5" colspan="2">
                    <asp:Label ID="lbl_error" runat="server" 
                        style="color: #FF0000; text-align: center; font-weight: 700;" 
                        CssClass="style6">  </asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
