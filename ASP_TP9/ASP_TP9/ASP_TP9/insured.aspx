<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="insured.aspx.cs" Inherits="ASP_TP9.insured" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        Gestion des assurés
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
        
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
