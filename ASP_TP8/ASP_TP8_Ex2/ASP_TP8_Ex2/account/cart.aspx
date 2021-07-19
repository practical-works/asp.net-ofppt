<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="ASP_TP8_Ex2.account.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/articles.css" rel="stylesheet" type="text/css" />
    <style type="text/css"> 
        .top
        {
            vertical-align: top;
            text-align: center;
        }
        .mid
        {
            vertical-align: middle;
        }
        .bot
        {
            vertical-align: bottom;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 id="title" runat="server">
        Mes commandes
    </h1>
    <table class="main-table">
        
        <tr>
            <td class="bot">
                <h3 id="OrdersTitle" runat="server">
                    Commandes
                </h3>
            </td>
            <td class="mid">
                <h3 id="OrderItemsTitle" runat="server">
                    Sélectionnez une commande 
                    <br />
                    Articles de la commande
                </h3>
            </td>
        </tr>

        <tr>
            <td class="label-cell top">
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" CssClass="orders_list" 
                    onselectedindexchanged="ListBox1_SelectedIndexChanged" Rows="10"></asp:ListBox>
                </td>
            <td class="input-cell top">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>

        <tr>
            <td></td>
            <td></td>
        </tr>

    </table>
</asp:Content>
