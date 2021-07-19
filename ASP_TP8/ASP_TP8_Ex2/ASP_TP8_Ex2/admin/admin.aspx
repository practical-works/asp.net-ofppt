<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="ASP_TP8_Ex2.admin.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: right;
            width: 50%;
        }
        .style2
        {
            text-align: left;
             width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Bienvenue
    </h1>
    <p>Aujourd'hui le <% = DateTime.Today.ToLongDateString() %></p>
    <table class="main-table">
        <tr>
            <td class="style1">
            Nombre de clients
                :
            </td>
            <td class="style2">
                <asp:Label ID="lbl_clients_count" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
            Nombre d'articles
                :
            </td>
            <td class="style2">
                <asp:Label ID="lbl_articles_count" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
            Nombre de commandes
                :
            </td>
            <td class="style2">
                <asp:Label ID="lbl_commandes_count" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
