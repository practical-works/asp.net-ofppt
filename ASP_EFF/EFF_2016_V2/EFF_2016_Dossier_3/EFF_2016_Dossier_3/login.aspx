<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EFF_2016_Dossier_3.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label_error" runat="server" style="color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Numéro</td>
            <td class="style5">
                <asp:TextBox ID="txt_num" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Mot de passe</td>
            <td class="style5">
                <asp:TextBox ID="txt_pass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="btn_login" runat="server" onclick="btn_login_Click" 
                    Text="Se connecter" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
