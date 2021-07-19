<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="folders.aspx.cs" Inherits="ASP_TP9.folders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        Gestion des dossiers
    </h2>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASP_TP9ConnectionString %>" 
            DeleteCommand="DELETE FROM [Dossier] WHERE [num_dossier] = @num_dossier" 
            InsertCommand="INSERT INTO [Dossier] ([date_depot], [montant_remboursement], [date_traitement], [lien_malade], [matricule], [num_maladie], [total_dossier]) VALUES (@date_depot, @montant_remboursement, @date_traitement, @lien_malade, @matricule, @num_maladie, @total_dossier)" 
            SelectCommand="SELECT * FROM [Dossier]" 
            UpdateCommand="UPDATE [Dossier] SET [date_depot] = @date_depot, [montant_remboursement] = @montant_remboursement, [date_traitement] = @date_traitement, [lien_malade] = @lien_malade, [matricule] = @matricule, [num_maladie] = @num_maladie, [total_dossier] = @total_dossier WHERE [num_dossier] = @num_dossier">
            <DeleteParameters>
                <asp:Parameter Name="num_dossier" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="date_depot" />
                <asp:ControlParameter ControlID="TextBox_montantRemb" DbType="Double" 
                    DefaultValue="" Name="montant_remboursement" Type="Double" />
                <asp:Parameter DbType="Date" Name="date_traitement" />
                <asp:Parameter Name="lien_malade" Type="String" />
                <asp:Parameter Name="matricule" Type="String" />
                <asp:Parameter Name="num_maladie" Type="Int32" />
                <asp:Parameter Name="total_dossier" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="date_depot" />
                <asp:Parameter Name="montant_remboursement" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="date_traitement" />
                <asp:Parameter Name="lien_malade" Type="String" />
                <asp:Parameter Name="matricule" Type="String" />
                <asp:Parameter Name="num_maladie" Type="Int32" />
                <asp:Parameter Name="total_dossier" Type="Decimal" />
                <asp:Parameter Name="num_dossier" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="num_dossier" DataSourceID="SqlDataSource1" 
            style="text-align: center; margin:auto; border:1px solid black;" 
            ForeColor="#333333" GridLines="None" 
            ShowFooter="True" onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                            Text="Ajouter" />
                    </FooterTemplate>
                    <HeaderTemplate>
                        <asp:CheckBox ID="CheckBox_all" runat="server" 
                            oncheckedchanged="CheckBox_all_CheckedChanged" AutoPostBack="True" />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                            oncheckedchanged="CheckBox1_CheckedChanged" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gestion" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                            CommandName="Update" onclick="Button1_Click" Text="Mettre à jour" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="Annuler" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Modifier" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Supprimer" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="N°" InsertVisible="False" 
                    SortExpression="num_dossier">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("num_dossier") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("num_dossier") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date Dépôt" SortExpression="date_depot">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("date_depot") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox_dateDepot" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox_dateDepot" Display="Dynamic" 
                            ErrorMessage="Champs requis ! "></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox_dateTrait" ControlToValidate="TextBox_dateDepot" 
                            Display="Dynamic" 
                            ErrorMessage="Doit être inférieure ou égale à la date de traitement" 
                            Operator="LessThanEqual" Type="Date"></asp:CompareValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("date_depot") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Montant Remboursement" 
                    SortExpression="montant_remboursement">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("montant_remboursement") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox_montantRemb" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox_montantRemb" Display="Dynamic" 
                            ErrorMessage="Champs requis ! "></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="TextBox_total" ControlToValidate="TextBox_montantRemb" 
                            Display="Dynamic" ErrorMessage="Doit être inférieur ou égale au montant total" 
                            Operator="LessThanEqual" Type="Double"></asp:CompareValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" 
                            Text='<%# Bind("montant_remboursement") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date Traitement" 
                    SortExpression="date_traitement">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("date_traitement") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox_dateTrait" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox_dateTrait" Display="Dynamic" 
                            ErrorMessage="Champs requis ! "></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("date_traitement") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Lien Malade" SortExpression="lien_malade">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("lien_malade") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox_lienMaladie" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox_lienMaladie" Display="Dynamic" 
                            ErrorMessage="Champs requis ! "></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("lien_malade") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Matricule" SortExpression="matricule">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("matricule") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="DropDownList_matricule" runat="server" 
                            DataSourceID="SqlDataSource_assure" DataTextField="nom_ass" 
                            DataValueField="matricule">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_assure" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ASP_TP9ConnectionString %>" 
                            SelectCommand="SELECT [matricule], [nom_ass] FROM [Assuré]">
                        </asp:SqlDataSource>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("matricule") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="N° Maladie" SortExpression="num_maladie">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("num_maladie") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="DropDownList_maladie" runat="server" 
                            DataSourceID="SqlDataSource_maladie" DataTextField="designation_maladie" 
                            DataValueField="num_maladie">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_maladie" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ASP_TP9ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Maladie]"></asp:SqlDataSource>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("num_maladie") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total" SortExpression="total_dossier">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("total_dossier") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox_total" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox_total" Display="Dynamic" 
                            ErrorMessage="Champs requis ! "></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("total_dossier") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle ForeColor="#333333" BackColor="#FFFBD6" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </p>

</asp:Content>
