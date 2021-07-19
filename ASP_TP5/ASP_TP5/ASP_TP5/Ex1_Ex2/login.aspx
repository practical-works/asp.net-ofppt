<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASP_TP5.Ex1_Ex2.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Authentification</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            font-size: xx-large;
        }
        .style3
        {
            font-size: xx-large;
            font-family: consolas;
        }
        .style4
        {
            font-family: consolas;
        }
        .style5
        {
            font-weight: bold;
            text-decoration: underline;
        }
        .style6
        {
            font-family: consolas;
            font-weight: bold;
            text-decoration: underline;
        }
        .btn
    </style>
</head>
<body style="background-color:silver;">
    <form id="form1" runat="server">
    <div class="style1">
    
        <span class="style2"><span class="style6">A</span><span class="style3" 
            style="color: rgb(0,0,0); font-style: normal; font-variant: normal;"><span 
            class="style5">uthentification</span><br class="style5" 
            style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" />
        </span>
        <br class="style4" />
        <span class="style4">Pseudo</span></span><br class="style3" />
        <asp:TextBox ID="TextBox_pseudo" runat="server" CssClass="style3"></asp:TextBox>
        <br class="style3" />
        <span class="style3">Mot de passe</span><br class="style3" />
        <asp:TextBox ID="TextBox_passe" runat="server" CssClass="style3" 
            TextMode="Password"></asp:TextBox>
        <br class="style3" />
        <br class="style2" />
        <asp:CheckBox ID="CheckBox_remember" runat="server" CssClass="style2" 
            Text="Se souvenir de moi" />
        <br class="style3" />
        <asp:Button ID="Button_connecter" runat="server" CssClass="style3" 
            Text="Se connecter" onclick="Button_connecter_Click" />
    
        <br />
        <br />
        <asp:Label ID="Label_error" runat="server" 
            style="font-size: xx-large; font-family: consolas; color: #FF0000"></asp:Label>
    
    </div>
    </form>
</body>
</html>
