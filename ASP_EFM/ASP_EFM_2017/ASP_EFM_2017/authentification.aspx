<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="authentification.aspx.cs" Inherits="ASP_EFM_2017.authentification" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                login</td>
            <td>
                <asp:TextBox ID="TextBox_login" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Mot de passe</td>
            <td>
                <asp:TextBox ID="TextBox_pass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button_connect" runat="server" onclick="Button_connect_Click" 
                    Text="Se connecter" />
            </td>
        </tr>
    </table>
</asp:Content>
