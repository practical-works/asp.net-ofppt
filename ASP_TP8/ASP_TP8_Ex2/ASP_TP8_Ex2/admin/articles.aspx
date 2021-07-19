<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="articles.aspx.cs" Inherits="ASP_TP8_Ex2.admin.articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Articles
    </h1>
    <table class="main-table">

        <tr>
            <td class="label-cell">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\Ambratolm_SQL;Initial Catalog=ASP_Ex2;Integrated Security=True" 
                    DeleteCommand="DELETE FROM [Article] WHERE [NumArticle] = @NumArticle" 
                    InsertCommand="INSERT INTO [Article] ([Designation], [Pu], [catégorie]) VALUES (@Designation, @Pu, @catégorie)" 
                    ProviderName="System.Data.SqlClient" 
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
            </td>
            <td class="input-cell">
            </td>
        </tr>

        <tr>
            <td class="label-cell">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" class="data-control" 
                    AutoGenerateRows="False" CellPadding="4" DataKeyNames="NumArticle" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                    Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="NumArticle" HeaderText="NumArticle" 
                            InsertVisible="False" ReadOnly="True" SortExpression="NumArticle" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" 
                            SortExpression="Designation" />
                        <asp:BoundField DataField="Pu" HeaderText="Pu" 
                            SortExpression="Pu" />
                        <asp:BoundField DataField="catégorie" HeaderText="catégorie" 
                            SortExpression="catégorie" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowInsertButton="True" ButtonType="Image" 
                            CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.png" 
                            EditImageUrl="~/images/pencil.png" InsertImageUrl="~/images/add.png" 
                            NewImageUrl="~/images/page.png" SelectImageUrl="~/images/navigation.png" 
                            UpdateImageUrl="~/images/update.png" />
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
                    DataKeyNames="NumArticle" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" ButtonType="Image" 
                            CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.png" 
                            EditImageUrl="~/images/pencil.png" InsertImageUrl="~/images/add.png" 
                            NewImageUrl="~/images/page.png" SelectImageUrl="~/images/navigation.png" 
                            UpdateImageUrl="~/images/update.png" />
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
