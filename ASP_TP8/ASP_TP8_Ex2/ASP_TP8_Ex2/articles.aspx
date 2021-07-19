<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="articles.aspx.cs" Inherits="ASP_TP8_Ex2.articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/articles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 id="title" runat="server">
        Articles
    </h1>
    <asp:DropDownList class="textbox" ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>
