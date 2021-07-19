<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dossiers.aspx.cs" Inherits="ASP_TP9.dossiers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
            <asp:Parameter Name="montant_remboursement" Type="Decimal" />
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="num_dossier" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" ShowFooter="True" 
        onrowcommand="GridView1_RowCommand">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                <FooterTemplate>
                    <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Générer</asp:LinkButton>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Mettre à jour"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:Button ID="btn_ajouter" runat="server" Text="Ajouter" 
                        onclick="btn_ajouter_Click" ValidationGroup="G1" />
                </FooterTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Modifier"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Select" Text="Sélectionner" 
                        CommandArgument='<%# Eval("num_dossier") %>' onclick="LinkButton2_Click"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Supprimer" onclick="LinkButton3_Click" 
                        onclientclick="return confirm(&quot;Supprimer le dossier ?&quot;)"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="num_dossier" InsertVisible="False" 
                SortExpression="num_dossier">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("num_dossier") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("num_dossier") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="date_depot" SortExpression="date_depot">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("date_depot") %>' 
                        TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox8" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox10" ControlToValidate="TextBox8" 
                        Operator="LessThanEqual" Type="Date" ValidationGroup="G1">Doit être inférieure ou égale à la date de traitement</asp:CompareValidator>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("date_depot") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="montant_remboursement" 
                SortExpression="montant_remboursement">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" 
                        Text='<%# Bind("montant_remboursement") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox9" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToCompare="TextBox12" ControlToValidate="TextBox9" 
                        ErrorMessage="Doit être inférieur au total" Operator="LessThanEqual" 
                        Type="Double" ValidationGroup="G1"></asp:CompareValidator>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" 
                        Text='<%# Bind("montant_remboursement") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="date_traitement" 
                SortExpression="date_traitement">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("date_traitement") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox10" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("date_traitement") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="lien_malade" SortExpression="lien_malade">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("lien_malade") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox11" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("lien_malade") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="matricule" SortExpression="matricule">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="SqlDataSource_mat" DataTextField="nom_ass" 
                        DataValueField="matricule" SelectedValue='<%# Bind("matricule") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource_mat" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ASP_TP9ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Assuré]"></asp:SqlDataSource>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource_assures" DataTextField="nom_ass" 
                        DataValueField="matricule">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource_assures" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ASP_TP9ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Assuré]"></asp:SqlDataSource>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("matricule") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="num_maladie" SortExpression="num_maladie">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" 
                        DataSourceID="SqlDataSource_mal" DataTextField="designation_maladie" 
                        DataValueField="num_maladie" SelectedValue='<%# Bind("num_maladie") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource_mal" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ASP_TP9ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Maladie]"></asp:SqlDataSource>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource_maladies" DataTextField="designation_maladie" 
                        DataValueField="num_maladie">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource_maladies" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ASP_TP9ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Maladie]"></asp:SqlDataSource>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("num_maladie") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="total_dossier" SortExpression="total_dossier">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("total_dossier") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox12" ValidationGroup="G1">*</asp:RequiredFieldValidator>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("total_dossier") %>'></asp:Label>
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
    <br />
    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Filtrer" />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:RadioButton ID="rb_all" GroupName="r1" runat="server" AutoPostBack="True" 
            oncheckedchanged="rb_all_CheckedChanged"  Text="Tous" />
        <asp:RadioButton ID="rb_folder"  GroupName="r1" runat="server" Text="Num Dossier" 
            AutoPostBack="True" oncheckedchanged="rb_folder_CheckedChanged" />
        <asp:RadioButton ID="rb_mat"  GroupName="r1" runat="server" Text="Matricule Assuré" 
            AutoPostBack="True" oncheckedchanged="rb_mat_CheckedChanged" />
        <br />
        <asp:TextBox ID="txt_filter" runat="server"></asp:TextBox>
        <asp:Button ID="btn_ok" runat="server" onclick="btn_ok_Click" Text="Ok" />
    </asp:Panel>
</asp:Content>
