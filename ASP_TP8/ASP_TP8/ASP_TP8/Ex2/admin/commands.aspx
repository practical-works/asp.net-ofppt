<%@ Page Title="" Language="C#" MasterPageFile="~/Ex2/admin/Admin.Master" AutoEventWireup="true" CodeBehind="commands.aspx.cs" Inherits="ASP_TP8.Ex2.admin.commands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASP_Ex2ConnectionString %>" 
        DeleteCommand="DELETE FROM [Commande] WHERE [NumCmd] = @NumCmd" 
        InsertCommand="INSERT INTO [Commande] ([NumClient], [dateCmd]) VALUES (@NumClient, @dateCmd)" 
        SelectCommand="SELECT * FROM [Commande]" 
        
        UpdateCommand="UPDATE [Commande] SET [NumClient] = @NumClient, [dateCmd] = @dateCmd WHERE [NumCmd] = @NumCmd">
        <DeleteParameters>
            <asp:Parameter Name="NumCmd" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NumClient" Type="Int32" />
            <asp:Parameter Name="dateCmd" DbType="Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NumClient" Type="Int32" />
            <asp:Parameter Name="dateCmd" DbType="Date" />
            <asp:Parameter Name="NumCmd" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NumCmd" 
        DataSourceID="SqlDataSource1" CssStyle="gridView" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NumCmd" HeaderText="ID" 
                InsertVisible="False" ReadOnly="True" SortExpression="NumCmd" />
            <asp:BoundField DataField="NumClient" HeaderText="Client" 
                SortExpression="NumClient" />
            <asp:BoundField DataField="dateCmd" HeaderText="Date" 
                SortExpression="dateCmd" />
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
