<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="secret.aspx.cs" Inherits="ASP_TP5.Ex1_Ex2.secret" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>[Secret] Informations confidentielles</title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            text-align: center;
        }
        .style4
        {
            font-size: xx-large;
            font-family: consolas;
            text-decoration: underline;
            color: rgb(255, 255, 255);
        }
        .style5
        {
            font-family: consolas;
            text-decoration: underline;
        }
        .style6
        {
            font-family: consolas;
            color: #FFFF00;
            font-weight: bold;
        }
        .style7
        {
            font-size: xx-large;
            color: rgb(255, 255, 255);
        }
        .style8
        {
            font-family: consolas;
        }
    </style>
</head>
<body style="background-color:#222; font-weight: 700;">
    <form id="form1" runat="server">
    <div class="style2">
    
        <strong><span class="style4">I</span></strong><span class="style7" 
            style="font-family:; font-style: normal; font-variant: normal;"><span 
            class="style5"><strong>nformations confidentielles</strong></span><br 
            class="style5" 
            
            style=" font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; " />
        <br class="style5" />
        <span class="style8">Pseudo : </span>
        </span>
    
        <span class="style1" 
            style="font-family: ; color: rgb(0,0,0); font-style: normal; font-variant: normal;">
        <asp:Label ID="Label_pseudo" runat="server" CssClass="style6" Text="_"></asp:Label>
        </span>
    
        <span class="style7" 
            style="font-family:; font-style: normal; font-variant: normal;">
        <br class="style8" />
        <span class="style8">Mot de passe : </span>
        </span>
    
        <span class="style1" 
            style="font-family: ; color: rgb(0,0,0); font-style: normal; font-variant: normal;">
        <asp:Label ID="Label_passe" runat="server" CssClass="style6" Text="_"></asp:Label>
        </span>
    
    </div>
    </form>
</body>
</html>
