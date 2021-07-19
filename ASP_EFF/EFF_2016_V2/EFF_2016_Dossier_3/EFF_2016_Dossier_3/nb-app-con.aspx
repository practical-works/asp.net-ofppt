<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="nb-app-con.aspx.cs" Inherits="EFF_2016_Dossier_3.nb_app_con" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            text-align: center;
        }
        .style6
        {
            text-align: right;
            width: 238px;
        }
        .style7
        {
            font-weight: bold;
            font-size: x-large;
        }
        .style8
        {
            text-align: right;
            width: 238px;
            height: 52px;
        }
        .style9
        {
            text-align: center;
            height: 52px;
        }
        .style10
        {
            text-align: right;
            width: 238px;
            height: 42px;
        }
        .style11
        {
            text-align: center;
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style3">
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Type d&#39;appareil</td>
            <td class="style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EFF_2016_V2ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Type_app]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="nom_type" 
                    DataValueField="num_type" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Nombre d&#39;appareils&nbsp; 
            </td>
            <td class="style9">
                <asp:Label ID="Label_nbApp" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Nombre de contrats&nbsp;
            </td>
            <td class="style11">
                <asp:Label ID="Label_nbCon" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
