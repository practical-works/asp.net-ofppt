<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="clients.aspx.cs" Inherits="ASP_TP8_Ex2.admin.clients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Clients
    </h1>
    <table class="main-table">

        <tr>
            <td class="label-cell">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\Ambratolm_SQL;Initial Catalog=ASP_Ex2;Integrated Security=True" 
                    DeleteCommand="DELETE FROM [Client] WHERE [NumClient] = @NumClient" 
                    InsertCommand="INSERT INTO [Client] ([Nom], [Adresse], [Ville], [Tel], [Loginn]) VALUES (@Nom, @Adresse, @Ville, @Tel, @Loginn)" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [NumClient], [Nom], [Adresse], [Ville], [Tel], [Loginn] FROM [Client]" 
                    UpdateCommand="UPDATE [Client] SET [Nom] = @Nom, [Adresse] = @Adresse, [Ville] = @Ville, [Tel] = @Tel, [Loginn] = @Loginn WHERE [NumClient] = @NumClient">
                    <DeleteParameters>
                        <asp:Parameter Name="NumClient" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nom" Type="String" />
                        <asp:Parameter Name="Adresse" Type="String" />
                        <asp:Parameter Name="Ville" Type="String" />
                        <asp:Parameter Name="Tel" Type="String" />
                        <asp:Parameter Name="Loginn" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nom" Type="String" />
                        <asp:Parameter Name="Adresse" Type="String" />
                        <asp:Parameter Name="Ville" Type="String" />
                        <asp:Parameter Name="Tel" Type="String" />
                        <asp:Parameter Name="Loginn" Type="String" />
                        <asp:Parameter Name="NumClient" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="input-cell">
            </td>
        </tr>

        <tr>
            <td class="label-cell">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" class="data-control" 
                    AutoGenerateRows="False" CellPadding="4" DataKeyNames="NumClient" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                    Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="NumClient" HeaderText="NumClient" 
                            InsertVisible="False" ReadOnly="True" SortExpression="NumClient" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                        <asp:BoundField DataField="Adresse" HeaderText="Adresse" 
                            SortExpression="Adresse" />
                        <asp:BoundField DataField="Ville" HeaderText="Ville" SortExpression="Ville" />
                        <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                        <asp:BoundField DataField="Loginn" HeaderText="Loginn" 
                            SortExpression="Loginn" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowInsertButton="True" ButtonType="Image" 
                            CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.png" 
                            EditImageUrl="~/images/pencil.png" InsertImageUrl="~/images/add.png" 
                            NewImageUrl="~/images/page.png" UpdateImageUrl="~/images/update.png" />
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
                    DataKeyNames="NumClient" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" ButtonType="Image" 
                            CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.png" 
                            EditImageUrl="~/images/pencil.png" SelectImageUrl="~/images/navigation.png" 
                            UpdateImageUrl="~/images/update.png" />
                        <asp:BoundField DataField="NumClient" HeaderText="ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="NumClient" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                        <asp:BoundField DataField="Adresse" HeaderText="Adresse" 
                            SortExpression="Adresse" />
                        <asp:BoundField DataField="Ville" HeaderText="Ville" SortExpression="Ville" />
                        <asp:BoundField DataField="Tel" HeaderText="Téléphone" SortExpression="Tel" />
                        <asp:BoundField DataField="Loginn" HeaderText="Login" 
                            SortExpression="Loginn" />
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
