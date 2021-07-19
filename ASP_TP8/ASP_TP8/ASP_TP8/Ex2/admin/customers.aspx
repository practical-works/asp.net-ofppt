<%@ Page Title="" Language="C#" MasterPageFile="~/Ex2/admin/Admin.Master" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="ASP_TP8.Ex2.admin.customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASP_Ex2ConnectionString %>" 
        DeleteCommand="DELETE FROM [Client] WHERE [NumClient] = @NumClient" 
        InsertCommand="INSERT INTO [Client] ([Nom], [Adresse], [Ville], [Tel], [Loginn], [Pass]) VALUES (@Nom, @Adresse, @Ville, @Tel, @Loginn, @Pass)" 
        SelectCommand="SELECT * FROM [Client]" 
        UpdateCommand="UPDATE [Client] SET [Nom] = @Nom, [Adresse] = @Adresse, [Ville] = @Ville, [Tel] = @Tel, [Loginn] = @Loginn, [Pass] = @Pass WHERE [NumClient] = @NumClient">
        <DeleteParameters>
            <asp:Parameter Name="NumClient" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nom" Type="String" />
            <asp:Parameter Name="Adresse" Type="String" />
            <asp:Parameter Name="Ville" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Loginn" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nom" Type="String" />
            <asp:Parameter Name="Adresse" Type="String" />
            <asp:Parameter Name="Ville" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Loginn" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
            <asp:Parameter Name="NumClient" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <table class="table">
        <tr>
            <td class="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NumClient" 
                    DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/Ex2/img/cancel.png" 
                            DeleteImageUrl="~/Ex2/img/delete.png" EditImageUrl="~/Ex2/img/pencil.png" 
                            NewImageUrl="~/Ex2/img/page_white.png" 
                            SelectImageUrl="~/Ex2/img/button_navigation.png" ShowDeleteButton="True" 
                            ShowEditButton="True" ShowSelectButton="True" 
                            UpdateImageUrl="~/Ex2/img/update.png" />
                        <asp:BoundField DataField="NumClient" HeaderText="NumClient" 
                            InsertVisible="False" ReadOnly="True" SortExpression="NumClient" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                        <asp:BoundField DataField="Adresse" HeaderText="Adresse" 
                            SortExpression="Adresse" />
                        <asp:BoundField DataField="Ville" HeaderText="Ville" SortExpression="Ville" />
                        <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                        <asp:BoundField DataField="Loginn" HeaderText="Loginn" 
                            SortExpression="Loginn" />
                        <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
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
            <td class="side">
               <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                 </asp:DetailsView>
            </td>
        </tr>
    </table>
    
    
    
</asp:Content>
