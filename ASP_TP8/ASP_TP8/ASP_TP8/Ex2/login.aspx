<%@ Page Title="" Language="C#" MasterPageFile="~/Ex2/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASP_TP8.Ex2.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style6
    {
        width: 787px;
    }
    .style10
    {            text-align: left;
        }
    .style15
    {
        width: 156px;
    }
    .style16
    {
        width: 393px;
            text-align: left;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <h1>
    Se connecter
    </h1>
    <table class="style6">
    <tr>
        <td class="style15">
            &nbsp;</td>
        <td class="style16">
            <asp:Label ID="lbl_error" runat="server" 
                style="color: #FF0000; text-align: left;"></asp:Label>
            <br />
            <asp:Label ID="lbl_info" runat="server" 
                style="color: #009933; text-align: left;"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style15" style="text-align: right">
            Nom d&#39;utilisateur</td>
        <td class="style16" style="text-align: left">
            <asp:TextBox ID="txt_login" runat="server" style="text-align: left" 
                CssClass="textbox"></asp:TextBox>
&nbsp;</td>
    </tr>
    <tr>
        <td class="style15" style="text-align: right">
            Mot de passe</td>
        <td class="style16" style="text-align: left">
            <asp:TextBox ID="txt_pass" runat="server" style="text-align: left" 
                CssClass="textbox" TextMode="Password"></asp:TextBox>
&nbsp;</td>
    </tr>
    <tr>
        <td class="style15" style="text-align: right">
            &nbsp;</td>
        <td class="style16" style="text-align: left">
            <asp:CheckBox ID="cb_remember" runat="server" Text="Se souvenir de moi " />
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style10">
            <asp:Button ID="btn_login" runat="server" CssClass="actionbutton" 
                Text="Connexion" Width="125px" onclick="btn_login_Click" />
        </td>
    </tr>
</table>
</asp:Content>

