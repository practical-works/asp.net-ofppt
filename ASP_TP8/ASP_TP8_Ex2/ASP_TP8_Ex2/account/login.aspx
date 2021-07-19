<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASP_TP8_Ex2.account.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Se connecter</h1>
    <table class="main-table">
    
        <tr>
            <td></td>
            <td class="input-cell">
                <asp:Label ID="lbl_error" runat="server" 
                    style="color: #FF0000; text-align: left;"></asp:Label>
                <br />
                <asp:Label ID="lbl_info" runat="server" 
                    style="color: #009933; text-align: left;"></asp:Label>
            </td>
        </tr>

        <tr>
            <td></td>
            <td></td>
        </tr>

        <tr>
            <td class="label-cell">
                Nom d&#39;utilisateur</td>
            <td class="input-cell">
                <asp:TextBox ID="txt_login" runat="server" 
                    CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="label-cell">
                Mot de passe</td>
            <td class="input-cell">
                <asp:TextBox ID="txt_pass" runat="server" style="text-align: left" 
                    CssClass="textbox" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td class="input-cell">
                <asp:CheckBox ID="cb_remember" runat="server" Text="Se souvenir de moi " />
            </td>
        </tr>

        <tr>
            <td></td>
            <td></td>
        </tr>

        <tr>
            <td></td>
            <td class="input-cell">
                <asp:Button ID="btn_login" runat="server" CssClass="button" 
                    Text="Connexion" Width="125px" onclick="btn_login_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
