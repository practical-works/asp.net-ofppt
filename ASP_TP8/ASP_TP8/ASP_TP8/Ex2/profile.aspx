<%@ Page Title="" Language="C#" MasterPageFile="~/Ex2/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="ASP_TP8.Ex2.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .style7
    {
        width: 807px;
    }
    .style11
    {
        text-align: left;
        width: 157px;
    }
        .style16
        {
            text-align: right;
            width: 268px;
        }
        .style17
        {
            text-align: left;
            width: 268px;
            font-weight: bold;
        }
        .style18
        {
            text-align: left;
            width: 269px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <h1>
        Mon profile
    </h1>
    <table class="style7">
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            Nom </td>
        <td class="style17">
            <asp:Label ID="txt_nom" runat="server"></asp:Label>
        </td>
        <td class="style18">
            &nbsp;</td></a>
    </tr>
    <tr>
        <td class="style16">
            Prénom</td>
        <td class="style17">
            <asp:Label ID="txt_prenom" runat="server"></asp:Label>
        </td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            Adresse</td>
        <td class="style17">
            <asp:Label ID="txt_adresse" runat="server"></asp:Label>
        </td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            Ville&nbsp; </td>
        <td class="style17">
            <asp:Label ID="txt_ville" runat="server">
            </asp:Label>
        </td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            Téléphone </td>
        <td class="style17">
            <asp:Label ID="txt_phone" runat="server"></asp:Label>
        </td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            Nom d&#39;utilisateur </td>
        <td class="style17">
            <asp:Label ID="txt_username" runat="server"></asp:Label>
        </td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            Mot de passe </td>
        <td class="style17">
            <asp:Label ID="txt_pass" runat="server"></asp:Label>
        </td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td class="style11" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

