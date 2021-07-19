<%@ Page Title="" Language="C#" MasterPageFile="~/Ex2/Site1.Master" AutoEventWireup="true" CodeBehind="items.aspx.cs" Inherits="ASP_TP8.Ex2.items" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <h1 id="titre" runat="server">
    Articles
    </h1>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        Width="360px" CssClass="actionbutton" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>

