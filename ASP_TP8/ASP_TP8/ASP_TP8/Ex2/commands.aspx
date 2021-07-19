<%@ Page Title="" Language="C#" MasterPageFile="~/Ex2/Site1.Master" AutoEventWireup="true" CodeBehind="commands.aspx.cs" Inherits="ASP_TP8.Ex2.commands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Mes commandes
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASP_Ex2ConnectionString %>" 
            SelectCommand="CommandesClient" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="NumClient" SessionField="NumClient" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </h1>
    <div>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" style="text-align: center; width:80%; margin:0 auto;" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Image" 
                SelectImageUrl="~/Ex2/img/button_navigation.png" ShowSelectButton="True" />
            <asp:BoundField DataField="Numéro de la commande" 
                HeaderText="Numéro de la commande" SortExpression="Numéro de la commande" />
            <asp:BoundField DataField="Date de la commande" HeaderText="Date de la commande" 
                SortExpression="Date de la commande" />
            <asp:BoundField DataField="Nombre d'articles commandés" 
                HeaderText="Nombre d'articles commandés" ReadOnly="True" 
                SortExpression="Nombre d'articles commandés" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    </div>
</asp:Content>
