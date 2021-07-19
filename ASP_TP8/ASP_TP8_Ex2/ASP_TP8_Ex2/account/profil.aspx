<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="ASP_TP8_Ex2.account.profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Mon profile</h1>
    <table class="main-table">
        
        <td></td>
            <td class="input-cell">
                <asp:Label ID="lbl_info" runat="server" 
                    style="color: #009933; text-align: left;"></asp:Label>
            </td>

        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        
        <tr>
            <td class="label-cell">
                Nom complet</td>
            <td class="input-cell editable">
                <asp:Label ID="txt_nom" runat="server"></asp:Label>
            </td>
            <td>
                
            </td>
        </tr>
        
        <tr>
            <td class="label-cell">
                Adresse</td>
            <td class="input-cell">
                <asp:Label ID="txt_adresse" runat="server"></asp:Label>
            </td>
            <td></td>
        </tr>
        
        <tr>
            <td class="label-cell">
                Ville</td>
            <td class="input-cell">
                <asp:Label ID="txt_ville" runat="server">
                </asp:Label>
            </td>
            <td></td>
        </tr>

        <tr>
            <td class="label-cell">
                Téléphone </td>
            <td class="input-cell">
                <asp:Label ID="txt_phone" runat="server"></asp:Label>
            </td>
            <td></td>
        </tr>
        
        <tr>
            <td></td>
            <td class="input-cell">
                <a class="edit-link" href="../account/profil-edit.aspx">Modifier les informations du profile</a>
            </td>
            <td></td>
        </tr>

        <tr>
            <td>
                <br />
            </td>
            <td>
                <br />
            </td>
            <td>
                <br />
            </td>
        </tr>

        <tr>
            <td class="label-cell">
                Nom d&#39;utilisateur </td>
            <td class="input-cell">
                <asp:Label ID="txt_username" runat="server"></asp:Label>
            </td>
            <td></td>
        </tr>

        <tr>
            <td></td>
            <td class="input-cell">
                <a class="edit-link" href="password-change.aspx">Changer le mot de passe</a>
            </td>
            <td></td>
        </tr>
        
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
</asp:Content>
