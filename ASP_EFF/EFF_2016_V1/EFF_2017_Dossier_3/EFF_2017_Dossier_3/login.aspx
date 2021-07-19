<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EFF_2017_Dossier_3.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            text-align: left;
        }
        .style4
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style2">
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left">
                <asp:Label ID="Label_error" runat="server" style="text-align: right"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                Type d&#39;utilisateur</td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddl_userType" runat="server">
                    <asp:ListItem>Participant</asp:ListItem>
                    <asp:ListItem>Organisateur</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Email</td>
            <td class="style3">
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Mot de passe
            </td>
            <td class="style3">
                <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="btn_login" runat="server" onclick="btn_login_Click" 
                    Text="Se connecter" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
