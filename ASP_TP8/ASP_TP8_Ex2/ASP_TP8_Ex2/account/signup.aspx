<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="ASP_TP8_Ex2.account.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .info-cell
        {
            text-align: left;
        }
        .style1
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        S'inscrire
    </h1>
    
    <table class="main-table">
    
    <tr>
        <td class="label-cell"></td>
        <td class="info-cell">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                HeaderText="Les erreurs suivantes sont survenues :" 
                style="text-align: left; color: #FF0000" />
            <asp:Label ID="lbl_error" runat="server" 
                style="color: #FF0000; text-align: left;"></asp:Label>
        </td>
    </tr>

    <tr>
        <td></td>
        <td></td>
    </tr>
    
    <tr>
        <td class="label-cell">Nom *</td>
        <td class="input-cell">
            <asp:TextBox ID="txt_nom" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txt_nom" ErrorMessage="Votre nom est vide" 
                Display="Dynamic" CssClass="style1">Le nom est requis</asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>

    <tr>
        <td class="label-cell">Prénom</td>
        <td class="input-cell">
            <asp:TextBox ID="txt_prenom" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td class="label-cell">Adresse</td>
        <td class="input-cell">
            <asp:TextBox ID="txt_adresse" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td class="label-cell">Ville</td>
        <td class="input-cell">
            <asp:DropDownList ID="txt_ville" runat="server" CssClass="textbox">
                <asp:ListItem Selected="True">(Aucune ville sélectionnée)</asp:ListItem>
                <asp:ListItem>Marrakech</asp:ListItem>
                <asp:ListItem>Rabat</asp:ListItem>
                <asp:ListItem>Fès</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>

    <tr>
        <td class="label-cell">Téléphone *</td>
        <td class="input-cell">
            <asp:TextBox ID="txt_phone" runat="server" CssClass="textbox" 
            placeholder="Exemple: 06-12-34-56-78"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txt_phone" ErrorMessage="Votre téléphone est vide" 
                Display="Dynamic" CssClass="style1">Le téléphone est requis</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txt_phone" CssClass="style12" 
                ErrorMessage="Votre format de téléphone est invalide" 
                ValidationExpression="0(5|6)-\d\d-\d\d-\d\d-\d\d" Display="Dynamic" 
                style="color: #FF0000">Le téléphone doit être au format 06-00-00-00-00 ou 05-00-00-00-00</asp:RegularExpressionValidator>
            <br />
        </td>
    </tr>

    <tr>
        <td></td>
        <td></td>
    </tr>

    <tr>
        <td class="label-cell">Nom d&#39;utilisateur *</td>
        <td class="input-cell">
            <asp:TextBox ID="txt_username" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_username" ErrorMessage="Votre nom d'utilisateur est vide" 
                    style="color: #FF0000" Display="Dynamic">Le nom d&#39;utilisateur est requis</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ErrorMessage="Votre nom d'utilisateur existe déjà" 
                onservervalidate="CustomValidator1_ServerValidate" CssClass="style1" 
                ControlToValidate="txt_username" Display="Dynamic" EnableClientScript="False">Le nom d&#39;utilisateur doit être unique et n&#39;appartenir qu&#39;à vous</asp:CustomValidator>
            <br />
        </td>
    </tr>

    <tr>
        <td class="label-cell">Mot de passe *</td>
        <td class="input-cell">
            <asp:TextBox ID="txt_pass" runat="server" CssClass="textbox" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txt_pass" ErrorMessage="Votre mot de passe est vide" 
                style="color: #FF0000" Display="Dynamic">Le mot de passe est requis</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txt_pass" CssClass="style12" 
                ErrorMessage="Votre mot de passe ne contient aucune lettre" 
                ValidationExpression=".*[a-zA-Z]+.*" Display="Dynamic" 
                style="color: #FF0000">Le mot de passe doit contenir au moins une lettre<br /></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txt_pass" CssClass="style12" 
                ErrorMessage="Votre mot de passe ne contient aucun chiffre" 
                ValidationExpression=".*\d+.*" Display="Dynamic" style="color: #FF0000">Le mot de passe doit contenir au moins un chiffre<br /></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txt_pass" CssClass="style12" 
                ErrorMessage=" Votre mot de passe est court" 
                ValidationExpression=".{8,}" Display="Dynamic" style="color: #FF0000">Le mot de passe doit contenir au moins 8 caractères</asp:RegularExpressionValidator>
            <br />
        </td>
    </tr>

    <tr>
        <td class="label-cell">Confirmation de mot de passe *</td>
        <td class="input-cell">
            <asp:TextBox ID="txt_pass_confirm" runat="server" CssClass="textbox" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txt_pass_confirm" ErrorMessage="Votre mot de passe de confirmation est vide" 
                style="color: #FF0000" Display="Dynamic">La confirmation du mot de passe est requise</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txt_pass" ControlToValidate="txt_pass_confirm"
                ErrorMessage="Vos deux mots de passes ne se correspondent pas" 
                CssClass="style1" Display="Dynamic">Les deux mots de passes doivent être identiques</asp:CompareValidator>
        </td>
    </tr>
    
    <tr>
        <td></td>
        <td></td>
    </tr>

    <tr>
        <td class="label-cell"></td>
        <td class="input-cell">
            <asp:Button ID="btn_signup" runat="server" CssClass="button" 
                Text="Inscription" Width="131px" onclick="btn_signup_Click" />
        </td>
    </tr>
</table>
</asp:Content>
