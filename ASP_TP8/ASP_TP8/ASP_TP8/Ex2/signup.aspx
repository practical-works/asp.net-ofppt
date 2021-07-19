<%@ Page Title="" Language="C#" MasterPageFile="~/Ex2/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="ASP_TP8.Ex2.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style7
    {
        width: 807px;
    }
    .style10
    {
            text-align: right;
            width: 30%;
        }
    .style11
    {
        text-align: left;
        width: 50%;
    }
        .style12
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style7">
    <h1>
    S'inscrire</h1>
    <tr>
        <td>
            &nbsp;</td>
        <td style="text-align: left">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                HeaderText="Les erreurs suivantes sont survenues :" 
                style="text-align: left; color: #FF0000" />
            <asp:Label ID="lbl_error" runat="server" style="color: #FF0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Nom *</td>
        <td class="style11">
            <asp:TextBox ID="txt_nom" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txt_nom" ErrorMessage="Le nom est requis" 
                style="color: #FF0000">Champs obligatoire</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Prénom</td>
        <td class="style11">
            <asp:TextBox ID="txt_prenom" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Adresse</td>
        <td class="style11">
            <asp:TextBox ID="txt_adresse" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Ville&nbsp; </td>
        <td class="style11">
            <asp:DropDownList ID="txt_ville" runat="server" CssClass="textbox">
                <asp:ListItem Selected="True">(Aucune ville sélectionnée)</asp:ListItem>
                <asp:ListItem>Marrakech</asp:ListItem>
                <asp:ListItem>Rabat</asp:ListItem>
                <asp:ListItem>Fès</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Téléphone *</td>
        <td class="style11">
            <asp:TextBox ID="txt_phone" runat="server" CssClass="textbox" 
            placeholder="Exemple: 06-12-34-56-78"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txt_phone" ErrorMessage="Le téléphone est requis" 
                style="color: #FF0000" Display="Dynamic">Champs obligatoire</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txt_phone" CssClass="style12" 
                ErrorMessage="Le téléphone doit être en format 06-00-00-00-00 ou 05-00-00-00-00" 
                ValidationExpression="0(5|6)-\d\d-\d\d-\d\d-\d\d" Display="Dynamic">Format invalide</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Nom d&#39;utilisateur *</td>
        <td class="style11">
            <asp:TextBox ID="txt_username" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txt_username" ErrorMessage="Le nom d'utilisateur est requis" 
                style="color: #FF0000">Champs obligatoire</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Mot de passe *</td>
        <td class="style11">
            <asp:TextBox ID="txt_pass" runat="server" CssClass="textbox" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txt_pass" ErrorMessage="Le mot de passe est requis" 
                style="color: #FF0000" Display="Dynamic">Champs obligatoire</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txt_pass" CssClass="style12" 
                ErrorMessage="Le mot de passe doit contenir des lettres" 
                ValidationExpression=".*[a-zA-Z]+.*" Display="Dynamic">Format invalide</asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txt_pass" CssClass="style12" 
                ErrorMessage="Le mot de passe doit contenir des chiffres" 
                ValidationExpression=".*\d+.*" Display="Dynamic">Format invalide</asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txt_pass" CssClass="style12" 
                ErrorMessage="Le mot de passe doit contenir 8 caractères au moins" 
                ValidationExpression=".{8,}" Display="Dynamic">Format invalide</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Confirmation de mot de passe *</td>
        <td class="style11">
            <asp:TextBox ID="txt_pass_confirm" runat="server" CssClass="textbox" 
                TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txt_pass" ControlToValidate="txt_pass_confirm" 
                CssClass="style12" 
                ErrorMessage="Les deux mot de passes doivent être identiques">Valeur incorrecte</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            <asp:Button ID="btn_signup" runat="server" CssClass="actionbutton" 
                Text="Inscription" Width="131px" onclick="btn_signup_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

