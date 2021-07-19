<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update-appareil.aspx.cs" Inherits="EFF_2016_Dossier_3.update_appareil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:EFF_2016_V2ConnectionString %>" 
        SelectCommand="SELECT * FROM [Appareil] WHERE ([num_type] = @num_type)" 
            DeleteCommand="DELETE FROM [Appareil] WHERE [num_appareil] = @num_appareil" 
            InsertCommand="INSERT INTO [Appareil] ([num_appareil], [nom_appareil], [date_achat], [prix_achat], [nb_contrats], [num_type]) VALUES (@num_appareil, @nom_appareil, @date_achat, @prix_achat, @nb_contrats, @num_type)" 
            UpdateCommand="UPDATE [Appareil] SET [nom_appareil] = @nom_appareil, [date_achat] = @date_achat, [prix_achat] = @prix_achat, [nb_contrats] = @nb_contrats, [num_type] = @num_type WHERE [num_appareil] = @num_appareil">
        <DeleteParameters>
            <asp:Parameter Name="num_appareil" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="num_appareil" Type="Int32" />
            <asp:Parameter Name="nom_appareil" Type="String" />
            <asp:Parameter DbType="Date" Name="date_achat" />
            <asp:Parameter Name="prix_achat" Type="Decimal" />
            <asp:Parameter Name="nb_contrats" Type="Int32" />
            <asp:Parameter Name="num_type" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="num_type" SessionField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nom_appareil" Type="String" />
            <asp:Parameter DbType="Date" Name="date_achat" />
            <asp:Parameter Name="prix_achat" Type="Decimal" />
            <asp:Parameter Name="nb_contrats" Type="Int32" />
            <asp:Parameter Name="num_type" Type="Int32" />
            <asp:Parameter Name="num_appareil" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>
        <asp:Label ID="Label_selected" runat="server" style="font-size: xx-large"></asp:Label>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="num_appareil" DataSourceID="SqlDataSource1" 
        GridLines="Vertical" onrowcommand="GridView1_RowCommand" ShowFooter="True">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Mettre à jour"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Annuler"></asp:LinkButton>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="LinkButton_filter" runat="server" 
                        onclick="LinkButton_filter_Click">Filtrer</asp:LinkButton>
                    &nbsp;<asp:Panel ID="Panel1" runat="server" Visible="False">
                        <asp:RadioButton ID="rb_tous" runat="server" AutoPostBack="True" GroupName="F" 
                            oncheckedchanged="rb_tous_CheckedChanged" Text="Tous" />
                        <br />
                        <asp:RadioButton ID="rb_nom" runat="server" AutoPostBack="True" Checked="True" 
                            GroupName="F" oncheckedchanged="rb_nom_CheckedChanged" Text="Nom" />
                        <br />
                        <asp:RadioButton ID="rb_num" runat="server" AutoPostBack="True" GroupName="F" 
                            oncheckedchanged="rb_num_CheckedChanged" Text="Numéro" />
                        <br />
                        <asp:TextBox ID="TextBox_filter" runat="server"></asp:TextBox>
                        <asp:Button ID="Button_filter" runat="server" onclick="Button_filter_Click" 
                            Text="Filtrer" />
                    </asp:Panel>
                </FooterTemplate>
                <HeaderTemplate>
                    Opérations
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Modifier"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandArgument='<%# Eval("num_appareil") %>' CommandName="Select" 
                        Text="Sélectionner"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                        CommandName="Delete" onclientclick="return confirm(&quot;Supprimer ?&quot;);" 
                        Text="Supprimer"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="num_appareil" SortExpression="num_appareil">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("num_appareil") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("num_appareil") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="nom_appareil" SortExpression="nom_appareil">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("nom_appareil") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Champs requis" 
                        style="font-weight: 700; color: #FF0000">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("nom_appareil") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="date_achat" SortExpression="date_achat">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("date_achat") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Champs requis" 
                        style="font-weight: 700; color: #FF0000">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("date_achat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="prix_achat" SortExpression="prix_achat">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("prix_achat") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Champs requis" 
                        style="font-weight: 700; color: #FF0000">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("prix_achat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="nb_contrats" SortExpression="nb_contrats">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nb_contrats") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Champs requis" 
                        style="font-weight: 700; color: #FF0000">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="CompareValidator" 
                        Operator="GreaterThanEqual" style="font-weight: 700; color: #FF0000" 
                        Type="Integer" ValueToCompare="0">Doit être &gt;= 0</asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("nb_contrats") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="num_type" SortExpression="num_type">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource_TypeApp" DataTextField="nom_type" 
                        DataValueField="num_type" SelectedValue='<%# Bind("num_type") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource_TypeApp" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:EFF_2016_V2ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Type_app]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("num_type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
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
</p>
</asp:Content>
