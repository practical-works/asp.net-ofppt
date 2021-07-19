<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="ASP_TP8_Ex2.account.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/articles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Commander
    </h1>
    <table class="main-table">
        
        <tr>
            <td class="label-cell"></td>
            <td class="input-cell">
                <asp:Label ID="lbl_error" runat="server" style="color: #FF0000"></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="label-cell">
            Commande
            </td>
            <td class="input-cell">
                <asp:DropDownList ID="ddl_commandes" runat="server" CssClass="textbox" 
                    AutoPostBack="True" onselectedindexchanged="ddl_commandes_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td class="label-cell">
            Article
            </td>
            <td class="input-cell">
                <asp:Literal ID="Literal_article" runat="server"></asp:Literal>
            </td>
        </tr>

        <tr>
            <td class="label-cell">
            Quantité
            </td>
            <td class="input-cell">
                <asp:TextBox ID="txt_qte" runat="server" CssClass="textbox" TextMode="Number">1</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_qte" Display="Dynamic" style="color: #FF0000">La quantité est requise</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="txt_qte" Display="Dynamic" Operator="GreaterThan" 
                    style="color: #FF0000" Type="Integer" ValueToCompare="0">La quantité doit être au moins 1 unité</asp:CompareValidator>
            </td>
        </tr>

        <tr>
            <td class="label-cell">
            </td>
            <td class="input-cell">
                <asp:Button ID="btn_add" runat="server" Text="Ajouter au panier" 
                    CssClass="button" onclick="btn_add_Click" />
                <asp:Button ID="btn_cancel" runat="server" Text="Annuler" 
                    CausesValidation="False" CssClass="button" PostBackUrl="~/articles.aspx" />
            </td>
        </tr>

        <tr>
            <td></td>
            <td></td>
        </tr>

    </table>
</asp:Content>
