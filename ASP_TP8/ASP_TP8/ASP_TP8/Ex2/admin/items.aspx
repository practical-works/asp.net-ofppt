<%@ Page Title="" Language="C#" MasterPageFile="~/Ex2/admin/Admin.Master" AutoEventWireup="true" CodeBehind="items.aspx.cs" Inherits="ASP_TP8.Ex2.admin.items" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASP_Ex2ConnectionString %>" 
        DeleteCommand="DELETE FROM [Article] WHERE [NumArticle] = @NumArticle" 
        InsertCommand="INSERT INTO [Article] ([Designation], [Pu], [catégorie]) VALUES (@Designation, @Pu, @catégorie)" 
        SelectCommand="SELECT * FROM [Article]" 
        
        UpdateCommand="UPDATE [Article] SET [Designation] = @Designation, [Pu] = @Pu, [catégorie] = @catégorie WHERE [NumArticle] = @NumArticle">
        <DeleteParameters>
            <asp:Parameter Name="NumArticle" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Pu" Type="Decimal" />
            <asp:Parameter Name="catégorie" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Pu" Type="Decimal" />
            <asp:Parameter Name="catégorie" Type="String" />
            <asp:Parameter Name="NumArticle" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NumArticle" 
        DataSourceID="SqlDataSource1" CssStyle="gridView" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NumArticle" HeaderText="NumArticle" 
                InsertVisible="False" ReadOnly="True" SortExpression="NumArticle" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" 
                SortExpression="Designation" />
            <asp:BoundField DataField="Pu" HeaderText="Pu" 
                SortExpression="Pu" />
            <asp:BoundField DataField="catégorie" HeaderText="catégorie" 
                SortExpression="catégorie" />
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
</asp:Content>
