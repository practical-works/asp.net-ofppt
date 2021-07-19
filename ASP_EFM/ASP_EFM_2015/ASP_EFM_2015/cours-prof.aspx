<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cours-prof.aspx.cs" Inherits="ASP_EFM_2015.cours_prof" %>

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
            SelectCommand="SELECT * FROM [Cours] WHERE ([MatriculeProfesseur] = @MatriculeProfesseur)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="MatriculeProfesseur" 
                    QueryStringField="prof" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="NumCours" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="NumCours" HeaderText="NumCours" 
                    InsertVisible="False" ReadOnly="True" SortExpression="NumCours" />
                <asp:BoundField DataField="Salle" HeaderText="Salle" SortExpression="Salle" />
                <asp:BoundField DataField="MatriculeProfesseur" 
                    HeaderText="MatriculeProfesseur" SortExpression="MatriculeProfesseur" />
                <asp:BoundField DataField="Titre" HeaderText="Titre" SortExpression="Titre" />
                <asp:BoundField DataField="Coef" HeaderText="Coef" SortExpression="Coef" />
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
    
    </div>
    </form>
</body>
</html>
