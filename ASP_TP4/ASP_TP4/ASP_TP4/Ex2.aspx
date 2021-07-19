<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex2.aspx.cs" Inherits="ASP_TP4.Ex2"  
EnableViewState="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Carte de crédit</title>
    <style type="text/css">
        .style1
        {
            font-family: Lucida Console;
            font-size: large;
        }
        .buttonStyle 
        {
            border: 2px solid black;
            font-family: Lucida Console;
            font-size: large;
            background-color: silver;
        }
        .buttonStyle:hover
        {
            cursor: pointer;
            background-color: yellow;
            box-shadow: 9px 9px 0px silver;
        }
        .textBoxStyle 
        {
            border: 2px solid black;
            font-family: Lucida Console;
            font-size: large;
        }
        .style3
        {
            font-family: Lucida Console;
            font-size: large;
            color: #FFFF00;
        }
        .style4
        {
            font-family: Lucida Console;
            font-size: large;
            color: #000000;
            background-color: #FFFF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span class="style1">Type carte
        </span>
        <br class="style1" />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            style="font-family: 'Lucida Console'; font-size: large;">
            <asp:ListItem Selected="True">MasterCard</asp:ListItem>
            <asp:ListItem>Visa</asp:ListItem>
            <asp:ListItem>American Express</asp:ListItem>
        </asp:RadioButtonList>
        <br class="style1" />
        <span class="style1">Numéro de la carte</span><br class="style1" />
        <asp:TextBox ID="TextBox_numCarte" runat="server" CssClass="textBoxStyle" 
            Width="369px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox_numCarte" style="color: #FF0000" 
            CssClass="style1">Ce champs est obligatoire</asp:RequiredFieldValidator>
        <asp:CustomValidator ID="valid_card_number" runat="server" 
            ControlToValidate="TextBox_numCarte" CssClass="style4" Display="None" 
            ErrorMessage="Numéro de carte : Valeur ou format invalide" 
            onservervalidate="valid_card_number_ServerValidate"></asp:CustomValidator>
        <br class="style1" />
        <br class="style1" />
        <span class="style1">Date d&#39;expiration (MM/AAAA) </span><br class="style1" />
        <asp:TextBox ID="TextBox_dateExp" runat="server" CssClass="textBoxStyle" 
            Width="368px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox_dateExp" style="color: #FF0000" 
            CssClass="style1">Ce champs est obligatoire</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="correct_date_expression" runat="server" 
            ControlToValidate="TextBox_dateExp" Display="None" 
            ErrorMessage="Date d’expiration : Caractères invalides" 
            ValidationExpression="0[1-9]|1[0-2]/[1-2099]" CssClass="style4"></asp:RegularExpressionValidator>
        <asp:CustomValidator ID="valid_date_value" runat="server" Display="None" 
            
            ErrorMessage="Date d’expiration : Valeur de date invalide" CssClass="style4" 
            onservervalidate="valid_date_value_ServerValidate" 
            ControlToValidate="TextBox_dateExp"></asp:CustomValidator>
        <br class="style3" />
        <br class="style1" />
        <span class="style1">Montant</span><br class="style1" />
        <asp:TextBox ID="TextBox_montant" runat="server" CssClass="textBoxStyle" 
            Width="367px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox_montant" style="color: #FF0000" 
            CssClass="style1">Ce champs est obligatoire</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="limited_positive_amount" runat="server" 
            ControlToValidate="TextBox_montant" CssClass="style4" Display="None" 
            ErrorMessage="Montant : Doit être un entier positif compris entre 100 et 10000" 
            MaximumValue="10000" MinimumValue="100" Type="Double"></asp:RangeValidator>
        <br class="style1" />
        <br class="style1" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            
            style="color: #FF0000; font-family: 'Lucida Console'; font-size: large;" />
        <br class="style1" />
        <asp:Button ID="Button1" runat="server" Text="Valider" CssClass="buttonStyle" 
            Width="227px" ToolTip="Cliquez ici pour valider" onclick="Button1_Click"/> 
    &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            style="font-family: 'Lucida Console'; font-size: large; color: #009900"></asp:Label>
    </div>
    </form>
</body>
<script type="text/javascript">
    
</script>
</html>
