<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex3_Calcul _prix_TTC.aspx.cs" Inherits="Exercices_Ex3_Calcul__prix_TTC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            font-size: large;
            font-family: consolas;
        }
        .style4
        {
            font-weight: bold;
            font-size: x-large;
            color: #006600;
            font-family: consolas;
        }
        .style5
        {
            font-family: consolas;
        }
        .style6
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label_nom" runat="server" Text="Nom du produit : " 
            CssClass="style3"></asp:Label>
        <br class="style3" />
        <asp:TextBox ID="TextBox_nom" runat="server" CssClass="style3" Width="466px"></asp:TextBox>
        <br class="style3" />
        <br class="style3" />
        <asp:Label ID="Label_prix_unitaire" runat="server" Text="Prix unitaire : " 
            CssClass="style3"></asp:Label>
        <br class="style3" />
        <asp:TextBox ID="TextBox_prix_unitaire" runat="server" CssClass="style3" 
            Width="134px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" CssClass="style6" Text="DH"></asp:Label>
        <br class="style3" />
        <br class="style3" />
        <asp:Label ID="Label_quantite" runat="server" Text="Quantité : " 
            CssClass="style3"></asp:Label>
        <br class="style3" />
        <asp:TextBox ID="TextBox_quantite" runat="server" CssClass="style3" 
            Width="134px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" CssClass="style6" Text="unité(s)"></asp:Label>
        <br class="style3" />
        <br class="style3" />
        <asp:Label ID="Label_tva" runat="server" Text="TVA : " CssClass="style3"></asp:Label>
        <br class="style3" />
        <asp:TextBox ID="TextBox_tva" runat="server" CssClass="style3" Width="133px"></asp:TextBox>
    
        <asp:Label ID="Label7" runat="server" CssClass="style6" Text="%"></asp:Label>
        <br class="style3" />
        <br class="style5" />
        <asp:Button ID="Button1" runat="server" CssClass="style5" 
            onclick="Button1_Click" style="font-size: large" Text="Calculer" />
        <asp:Label ID="Label_error" runat="server" 
            style="font-size: larger; color: #FF0000"></asp:Label>
        <br class="style5" />
        <br class="style5" />
        <asp:Label ID="Label1" runat="server" CssClass="style5" 
            style="font-size: large" Text="Montant HT : "></asp:Label>
        <asp:Label ID="Label_montant_ht" runat="server" CssClass="style4"></asp:Label>
        <br class="style5" />
        <asp:Label ID="Label4" runat="server" CssClass="style5" 
            style="font-size: large" Text="Montant TTC : "></asp:Label>
        <asp:Label ID="Label_montant_ttc" runat="server" CssClass="style4"></asp:Label>
    
    </div>
    </form>
</body>
</html>
