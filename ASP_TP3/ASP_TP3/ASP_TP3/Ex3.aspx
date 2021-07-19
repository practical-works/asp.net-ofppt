<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex3.aspx.cs" Inherits="ASP_TP3.Ex3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-family: "Britannic Bold";
        }
        .style2
        {
            color: #FF0000;
            font-family: "Britannic Bold";
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1">Veuillez entrer votre mot de passe :</span><br 
            class="style1" />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style1"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" 
            ErrorMessage="Votre mot de passe doit contenir au moins un chiffre" 
            style="font-family: 'Britannic Bold'; font-size: xx-large; color: #FF0000" 
            ValidationExpression=".*\d.*">*</asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox1" CssClass="style2" 
            ErrorMessage="Les mots de passe doivent avoir de 5 à 10 caractères" 
            ValidationExpression=".{5,10}">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox1" 
            ErrorMessage="Le mot de passe ne doit pas être vide" 
            style="font-family: 'Britannic Bold'; color: #FF0000; font-size: xx-large">*</asp:RequiredFieldValidator>
        <br class="style1" />
        <span class="style1">Veuillez réentrer votre mot de passe :</span><br 
            class="style1" />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style1"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox1" ControlToValidate="TextBox2" CssClass="style2" 
            ErrorMessage="Le deuxième mot de passe doit être identique au premier">*</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox2" 
            ErrorMessage="Le deuxième mot de passe ne doit pas être vide" 
            style="font-family: 'Britannic Bold'; color: #FF0000; font-size: xx-large">*</asp:RequiredFieldValidator>
        <br class="style1" />
        <br class="style1" />
        <asp:Button ID="Button1" runat="server" CssClass="style1" Text="Envoyer" />
        <br class="style1" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            style="font-weight: 700; color: #FF0000; font-family: 'Britannic Bold'; font-size: xx-large" />
    
    </div>
    </form>
</body>
</html>
