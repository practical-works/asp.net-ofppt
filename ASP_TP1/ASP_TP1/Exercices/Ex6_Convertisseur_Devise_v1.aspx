<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex6_Convertisseur_Devise_v1.aspx.cs" Inherits="Exercices_Ex6_Convertisseur_Devise" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body 
        {
            background-color:Silver;
        }
        .s 
        {
            font-size: xx-large;
        }
        .style1
        {
            border: 3px solid black;
            font-size: medium;
            background-color: silver;
            transition: box-shadow 1s;
        }
        #btnConvertir
        {
            border: 3px solid white;
			font-size: xx-large;
			color: white;
			background-color: black;
			transition: box-shadow 1s, color 1s, border 1s;
        }
        #btnConvertir:hover
        {
            border: 3px solid green;
			color: green;
			box-shadow: 0px 0px 20px green;
			cursor: pointer;
        }
        .style3
        {
            border: 3px solid black;
            font-size: xx-large;
            background-color: silver;
            transition: box-shadow 1s;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: xx-small; font-family: 'Tempus Sans ITC';">
    
        <asp:Label ID="Label2" runat="server" CssClass="s" Text="Somme : "></asp:Label>
        <br class="style3" />
        <asp:TextBox ID="txtDollards" runat="server" CssClass="style3"></asp:TextBox>
        &nbsp;<asp:Label ID="Label3" runat="server" CssClass="s" Text="  Dollars ($)"></asp:Label>
        <br class="style3" />
        <asp:CheckBox ID="cbEuro" runat="server" CssClass="s" Text="Euro" />
        <br class="style3" />
        <asp:CheckBox ID="cbYen" runat="server" CssClass="s" Text="Yen Japonais" />
        <br class="style3" />
        <asp:CheckBox ID="cbCanad" runat="server" CssClass="s" 
            Text="Dollars Canadien" />
        <br class="style3" />
        <asp:Button ID="btnConvertir" runat="server" CssClass="style1" 
            onclick="btnConvertir_Click" Text="Convertir" />
        <br class="style3" />
        <asp:Label ID="lblDollarsEnDevise" runat="server" CssClass="s"></asp:Label>
    
    </div>
    </form>
</body>
</html>
