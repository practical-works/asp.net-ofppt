<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="participants.aspx.cs" Inherits="EFF_2017_Dossier_3.participants" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: left">
    Campagne :
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
</p>
<p style="text-align: left">
    Nombre de participants :
    <asp:Label ID="Label1" runat="server" 
        style="font-weight: 700; font-size: x-large"></asp:Label>
</p>
</asp:Content>
