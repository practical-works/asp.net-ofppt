<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex1.aspx.cs" Inherits="ASP_TP4.Ex1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    Identifiant<br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Mot de passe<br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox2" Display="None" 
        ErrorMessage="Contenir au moins 8 caractères" style="color: #FF0000" 
        ValidationExpression=".{8,}">Erreur</asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBox3" Display="None" 
        ErrorMessage="Contenir au moins une lettre MAJUSCULE" style="color: #FF0000" 
        ValidationExpression="[A-Z]+">Erreur</asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="TextBox2" Display="None" 
        ErrorMessage="Contenir au moins une lettre minuscule" style="color: #FF0000" 
        ValidationExpression="[a-z]+">Erreur</asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="TextBox2" Display="None" 
        ErrorMessage="Contenir au moins un chiffre" style="color: #FF0000" 
        ValidationExpression="\d+">Erreur</asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
        ControlToValidate="TextBox2" Display="None" 
        ErrorMessage="Contenir un caractère spécial (@ # &amp; % ! = ? + - * /)" 
        style="color: #FF0000" ValidationExpression="[*@#&amp;%!=?+-/]+">Erreur</asp:RegularExpressionValidator>
    <br />
    Mot de pass 2<br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Valider" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        style="color: #FF0000" />
    </form>
</body>
</html>
