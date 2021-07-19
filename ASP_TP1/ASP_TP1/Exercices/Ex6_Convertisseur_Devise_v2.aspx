<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex6_Convertisseur_Devise_v2.aspx.cs" Inherits="Exercices_Ex6_Convertisseur_Devise" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            text-align: left;
            font-family: SimSun-ExtB;
        }
        .style2
        {
            font-size: xx-large;
            font-family: SimSun-ExtB;
            cursor:pointer;
            margin-left: 0px;
        }
        .style3
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style3">
    
        <br />
        <br />
    
        <asp:Label ID="Label2" runat="server" CssClass="style2" Text="Somme : "></asp:Label>
        <asp:TextBox ID="txtDollards" runat="server" CssClass="style2"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" CssClass="style2" Text="  Dollars ($)"></asp:Label>
        <br class="style2" />
        <br class="style2" />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="66px" Width="508px" 
            CssClass="style2" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Sélectionnez une device</asp:ListItem>
            <asp:ListItem>Euro</asp:ListItem>
            <asp:ListItem>Yen Japonais</asp:ListItem>
            <asp:ListItem>Dollars Canadien</asp:ListItem>
        </asp:DropDownList>
        <br class="style2" />
        <br class="style1" />
        <asp:Label ID="lblDollarsEnDevise" runat="server" CssClass="style1"></asp:Label>
    
    </div>
    </form>
</body>
</html>
