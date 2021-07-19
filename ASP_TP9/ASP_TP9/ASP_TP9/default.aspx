<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ASP_TP9._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            
        }
        .style4
        {
            height: 29px;
            width: 20%;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <mark>
        <br />
        Page consultée
        <asp:Label ID="Label_viewCount" runat="server" style="font-weight: 700" 
            Text="0"></asp:Label>
&nbsp;fois.</mark>
    <p>
        Informations :<table class="style1">
            <tr>
                <td class="style4">
                    Nom</td>
                <td>
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Prénom</td>
                <td>
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Date de naissance</td>
                <td>
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Nombre d&#39;enfants</td>
                <td>
                    <asp:Label ID="Label4" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Situation familiale</td>
                <td>
                    <asp:Label ID="Label5" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Total remboursé</td>
                <td>
                    <asp:Label ID="Label6" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Date décès</td>
                <td>
                    <asp:Label ID="Label7" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
        </table>
    </p>

    <br />
    Entreprise :<table class="style1">
        <tr>
            <td class="style4">
                Nom</td>
            <td>
                <asp:Label ID="Label8" runat="server" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Adresse</td>
            <td>
                <asp:Label ID="Label9" runat="server" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Téléphone</td>
            <td>
                <asp:Label ID="Label10" runat="server" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Email</td>
            <td>
                <asp:Label ID="Label11" runat="server" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Nombre d&#39;employés</td>
            <td>
                <asp:Label ID="Label12" runat="server" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    Dossiers :<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASP_TP9ConnectionString %>" 
        SelectCommand="SELECT [date_depot], [montant_remboursement], [date_traitement], [lien_malade], [total_dossier], [num_dossier], [num_maladie] FROM [Dossier] WHERE ([matricule] = @matricule)">
        <SelectParameters>
            <asp:SessionParameter Name="matricule" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    

    <table class="style1">
        <tr>
            <td class=style4>
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="num_dossier" DataSourceID="SqlDataSource1" 
        style="text-align: center;" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="num_dossier" HeaderText="N°" InsertVisible="False" 
                ReadOnly="True" SortExpression="num_dossier" />
            <asp:BoundField DataField="date_depot" HeaderText="Date Dépôt" 
                SortExpression="date_depot" />
            <asp:BoundField DataField="montant_remboursement" 
                HeaderText="Montant Remboursement" SortExpression="montant_remboursement" />
            <asp:BoundField DataField="date_traitement" DataFormatString="{0:d}" 
                HeaderText="Traité le" SortExpression="date_traitement" />
            <asp:BoundField DataField="num_maladie" HeaderText="N° Maladie" 
                SortExpression="num_maladie" />
            <asp:BoundField DataField="lien_malade" HeaderText="Lien Malade" 
                SortExpression="lien_malade" />
            <asp:BoundField DataField="total_dossier" HeaderText="Total" 
                SortExpression="total_dossier" />
        </Columns>
    </asp:GridView></td>
        </tr>
    </table>
    

</asp:Content>
