<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="ASP_EFM_2017.inscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
        }
        .style3
        {
            text-align: right;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                CIN</td>
            <td>
                <asp:TextBox ID="TextBox_cin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Nom</td>
            <td>
                <asp:TextBox ID="TextBox_nom" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="RegularExpressionValidator" ValidationExpression="[a-zA-Z]+" 
                    ControlToValidate="TextBox_nom">Doit contenir seulement des lettres</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Prénom</td>
            <td>
                <asp:TextBox ID="TextBox_prenom" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="RegularExpressionValidator" ValidationExpression="[a-zA-Z]+" 
                    ControlToValidate="TextBox_prenom">Doit contenir seulement des lettres</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Téléphone</td>
            <td>
                <asp:TextBox ID="TextBox_telephone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox_telephone" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox_telephone" ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="0[6|5]-\d\d-\d\d-\d\d-\d\d">Téléphone invalide</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Login</td>
            <td>
                <asp:TextBox ID="TextBox_login" runat="server"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="CustomValidator" 
                    onservervalidate="CustomValidator1_ServerValidate" 
                    ControlToValidate="TextBox_login">Ce login existe déjà</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Mot de passe</td>
            <td>
                <asp:TextBox ID="TextBox_pass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Confirmer le mot de passe</td>
            <td>
                <asp:TextBox ID="TextBox_pass2" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox_pass" ControlToValidate="TextBox_pass2" 
                    ErrorMessage="CompareValidator">Les mot de passes ne se correspond pas</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button_inscrire" runat="server" Text="S'inscrire" 
                    onclick="Button_inscrire_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
