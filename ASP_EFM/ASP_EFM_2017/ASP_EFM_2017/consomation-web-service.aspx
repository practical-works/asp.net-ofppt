<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consomation-web-service.aspx.cs" Inherits="ASP_EFM_2017.consomation_web_service" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Reservations entre deux dates (avec le webservice)<br />
        Date de départ :
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        Date d&#39;arrivée :
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Afficher les réservations" />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
            CellSpacing="1" GridLines="None">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
