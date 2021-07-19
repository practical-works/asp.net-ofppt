<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mise-a-jour-hotels.aspx.cs" Inherits="ASP_EFM_2017.mise_a_jour_hotels" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EFMConnectionString %>" 
            DeleteCommand="DELETE FROM [Hotel] WHERE [numhotel] = @numhotel" 
            InsertCommand="INSERT INTO [Hotel] ([numhotel], [nom], [ville], [etoiles]) VALUES (@numhotel, @nom, @ville, @etoiles)" 
            SelectCommand="SELECT * FROM [Hotel]" 
            UpdateCommand="UPDATE [Hotel] SET [nom] = @nom, [ville] = @ville, [etoiles] = @etoiles WHERE [numhotel] = @numhotel">
            <DeleteParameters>
                <asp:Parameter Name="numhotel" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="numhotel" Type="Int32" />
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="ville" Type="String" />
                <asp:Parameter Name="etoiles" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="ville" Type="String" />
                <asp:Parameter Name="etoiles" Type="Int32" />
                <asp:Parameter Name="numhotel" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False" DataKeyNames="numhotel" 
            DataSourceID="SqlDataSource1" onrowcommand="GridView1_RowCommand" 
            ShowFooter="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Mettre à jour"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="LinkButton_ajouter" runat="server" 
                            onclick="LinkButton_ajouter_Click">Ajouter</asp:LinkButton>
                        <asp:Label ID="Label_error" runat="server"></asp:Label>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Mise à jour
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Modifier"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Select" Text="Sélectionner"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Supprimer"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="numhotel" SortExpression="numhotel">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("numhotel") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox_numhotel" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("numhotel") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="nom" SortExpression="nom">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nom") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox_nom" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("nom") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ville" SortExpression="ville">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ville") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox_ville" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ville") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="etoiles" SortExpression="etoiles">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("etoiles") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox_etoiles" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("etoiles") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:GridView ID="GridView2" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
