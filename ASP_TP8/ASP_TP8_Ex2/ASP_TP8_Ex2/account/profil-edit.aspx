<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="profil-edit.aspx.cs" Inherits="ASP_TP8_Ex2.account.profil_edit" %>
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
        Modifier mon profile
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
        <td class="lable-cell"></td>
        <td class="input-cell">
            <asp:Button ID="btn_save" runat="server" CssClass="button" 
                Text="Enregistrer" Width="131px" onclick="btn_save_Click" />
            <asp:Button ID="btn_cancel" runat="server" CssClass="button" 
                Text="Annuler" Width="131px" CausesValidation="False" 
                PostBackUrl="~/account/profil.aspx" />
        </td>
    </tr>
    </table>
</asp:Content>
