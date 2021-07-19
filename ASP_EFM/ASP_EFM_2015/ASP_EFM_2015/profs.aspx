<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profs.aspx.cs" Inherits="ASP_EFM_2015.profs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Professeurs</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Professeurs
            <asp:Button ID="Button_export" runat="server" onclick="Button_export_Click" 
                Text="Exporter dans un fichier XML" />
        </h1>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:EFMConnectionString %>" 
        DeleteCommand="DELETE FROM [Professeur] WHERE [MatriculeProfesseur] = @MatriculeProfesseur" 
        InsertCommand="INSERT INTO [Professeur] ([Nom], [Tel]) VALUES (@Nom, @Tel)" 
        SelectCommand="SELECT * FROM [Professeur]" 
        UpdateCommand="UPDATE [Professeur] SET [Nom] = @Nom, [Tel] = @Tel WHERE [MatriculeProfesseur] = @MatriculeProfesseur">
        <DeleteParameters>
            <asp:Parameter Name="MatriculeProfesseur" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nom" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nom" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="MatriculeProfesseur" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="MatriculeProfesseur" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
        ShowFooter="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton_update" runat="server" CausesValidation="True" 
                        CommandName="Update" onclick="LinkButton_update_Click" Text="Mettre à jour"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="LinkButton_insert" runat="server" 
                        onclick="LinkButton_insert_Click">Ajouter</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton_reinitialiser" runat="server" 
                        onclick="LinkButton_reinitialiser_Click" onclientclick="reset();" 
                        CausesValidation="False">Réinitialiser</asp:LinkButton>
                    <asp:Label ID="Label_error" runat="server" style="color: #FF0000"></asp:Label>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Modifier"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton_delete" runat="server" CausesValidation="False" 
                        CommandName="Delete" onclick="LinkButton_delete_Click" 
                        onclientclick="return confirm(&quot;Supprimer ?&quot;);" Text="Supprimer"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MatriculeProfesseur" InsertVisible="False" 
                SortExpression="MatriculeProfesseur">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("MatriculeProfesseur") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label_id" runat="server" 
                        Text='<%# Bind("MatriculeProfesseur") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nom" SortExpression="Nom">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Nom") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox_nom" runat="server" Text='<%# Bind("Nom") %>'></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nom") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tel" SortExpression="Tel">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Tel") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox_telephone" runat="server" Text='<%# Bind("Tel") %>'></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Tel") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    Cours
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink_cours" runat="server" 
                        Text="Voir les cours enseignés" NavigateUrl="~/cours-prof.aspx" 
                        Target="_blank"></asp:HyperLink>
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
    </form>
    <script type="text/javascript">
        function reset() {
            var txt_nom = document.getElementById("GridView1_TextBox_nom");
            var txt_tel = document.getElementById("GridView1_TextBox_telephone");
            txt_nom.value = "";
            txt_tel.value = "";
        }
    </script>
</body>
</html>
