<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gestion-campagnes.aspx.cs" Inherits="EFF_2017_Dossier_3.gestion_campagnes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            text-align: right;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            text-align: right;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style2">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label_error" runat="server" 
                    style="font-weight: 700; color: #FF0000"></asp:Label>
                <asp:Label ID="Label_confirm" runat="server" 
                    style="font-weight: 700; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                ID</td>
            <td class="style4">
                <asp:TextBox ID="txt_id" runat="server" TextMode="Number" Width="84px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_id" style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Nom</td>
            <td class="style4">
                <asp:TextBox ID="txt_nom" runat="server" Width="226px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Description</td>
            <td class="style4">
                <asp:TextBox ID="txt_desc" runat="server" Height="74px" TextMode="MultiLine" 
                    Width="221px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Montant</td>
            <td class="style4">
                <asp:TextBox ID="txt_montant" runat="server" TextMode="Number">0</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_montant" style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <strong>Bénéficière</strong></td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Nom</td>
            <td class="style4">
                <asp:TextBox ID="txt_nomBen" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Prénom</td>
            <td class="style4">
                <asp:TextBox ID="txt_prenomBen" runat="server" Width="208px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Catégorie</td>
            <td class="style4">
                <asp:DropDownList ID="ddl_categorie" runat="server" Width="157px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btn_ajouter" runat="server" onclick="btn_ajouter_Click" 
                    Text="Ajouter la nouvelle campagne" Width="226px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\AMBRATOLM_SQL;Initial Catalog=EFF_2016;Integrated Security=True" 
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Campagne]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="idCamp" DataSourceID="SqlDataSource1" 
                    ForeColor="Black" GridLines="Horizontal" Width="50%">
                    <Columns>
                        <asp:BoundField DataField="idCamp" HeaderText="idCamp" ReadOnly="True" 
                            SortExpression="idCamp" />
                        <asp:BoundField DataField="nomCamp" HeaderText="nomCamp" 
                            SortExpression="nomCamp" />
                        <asp:BoundField DataField="description" HeaderText="description" 
                            SortExpression="description" />
                        <asp:BoundField DataField="dateCreation" HeaderText="dateCreation" 
                            SortExpression="dateCreation" />
                        <asp:BoundField DataField="dateFin" HeaderText="dateFin" 
                            SortExpression="dateFin" />
                        <asp:BoundField DataField="montantCamp" HeaderText="montantCamp" 
                            SortExpression="montantCamp" />
                        <asp:BoundField DataField="nomBeneficiere" HeaderText="nomBeneficiere" 
                            SortExpression="nomBeneficiere" />
                        <asp:BoundField DataField="prenBeneficiere" HeaderText="prenBeneficiere" 
                            SortExpression="prenBeneficiere" />
                        <asp:BoundField DataField="dateDernierePart" HeaderText="dateDernierePart" 
                            SortExpression="dateDernierePart" />
                        <asp:BoundField DataField="idCategorie" HeaderText="idCategorie" 
                            SortExpression="idCategorie" />
                        <asp:BoundField DataField="idOrg" HeaderText="idOrg" SortExpression="idOrg" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
