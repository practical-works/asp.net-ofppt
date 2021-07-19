<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="commandes.aspx.cs" Inherits="ASP_TP8_Ex2.admin.commandes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Commandes
    </h1>
    <table class="main-table">

        <tr>
            <td class="label-cell">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\Ambratolm_SQL;Initial Catalog=ASP_Ex2;Integrated Security=True" 
                    DeleteCommand="DELETE FROM [Commande] WHERE [NumCmd] = @NumCmd" 
                    InsertCommand="INSERT INTO [Commande] ([NumClient], [dateCmd]) VALUES (@NumClient, @dateCmd)" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT * FROM [Commande]" 
                    
                    UpdateCommand="UPDATE [Commande] SET [NumClient] = @NumClient, [dateCmd] = @dateCmd WHERE [NumCmd] = @NumCmd">
                    <DeleteParameters>
                        <asp:Parameter Name="NumCmd" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NumClient" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="dateCmd" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NumClient" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="dateCmd" />
                        <asp:Parameter Name="NumCmd" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="input-cell">
            </td>
        </tr>

        <tr>
            <td class="label-cell">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" class="data-control" 
                    AutoGenerateRows="False" CellPadding="4" DataKeyNames="NumCmd" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                    Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="NumCmd" HeaderText="NumCmd" 
                            InsertVisible="False" ReadOnly="True" SortExpression="NumCmd" />
                        <asp:BoundField DataField="NumClient" HeaderText="NumClient" 
                            SortExpression="NumClient" />
                        <asp:BoundField DataField="dateCmd" HeaderText="dateCmd" 
                            SortExpression="dateCmd" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowInsertButton="True" ButtonType="Button" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
            </td>
            <td class="input-cell">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" class="data-control"
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="NumCmd" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" ButtonType="Button" />
                        <asp:BoundField DataField="NumCmd" HeaderText="NumCmd" 
                            InsertVisible="False" ReadOnly="True" SortExpression="NumCmd" />
                        <asp:BoundField DataField="NumClient" HeaderText="NumClient" 
                            SortExpression="NumClient" />
                        <asp:BoundField DataField="dateCmd" HeaderText="dateCmd" 
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
            </td>
        </tr>

        <tr>
            <td class="label-cell">
            </td>
            <td class="input-cell">
            </td>
        </tr>

    </table>
</asp:Content>
