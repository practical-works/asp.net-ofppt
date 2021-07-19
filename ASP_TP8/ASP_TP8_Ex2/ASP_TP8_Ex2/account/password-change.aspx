<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="password-change.aspx.cs" Inherits="ASP_TP8_Ex2.account.password_change" %>
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
    <h1>Changer le mot de passe</h1>

    <table class="main-table">

        <tr>
            <td class="label-cell"></td>
            <td class="info-cell">
                <asp:Label ID="lbl_error" runat="server" 
                    style="color: #FF0000; text-align: left;"></asp:Label>
            </td>
        </tr>

        <tr>
            <td></td>
            <td></td>
        </tr>

        <tr>
            <td class="label-cell">Mot de passe actuel *</td>
            <td class="input-cell">
                <asp:TextBox ID="txt_passOld" runat="server" CssClass="textbox" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_pass" ErrorMessage="Votre mot de passe est vide" 
                    style="color: #FF0000" Display="Dynamic">Le mot de passe actuel est requis</asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>

        <tr>
            <td class="label-cell">Nouveau mot de passe *</td>
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
            <td class="label-cell">Confirmation du nouveau mot de passe *</td>
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
                <asp:Button ID="btn_save" runat="server" CssClass="button" 
                    Text="Enregistrer" Width="131px" onclick="btn_save_Click" />
            <asp:Button ID="btn_cancel" runat="server" CssClass="button" 
                Text="Annuler" Width="131px" CausesValidation="False" 
                PostBackUrl="~/account/profil.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>
