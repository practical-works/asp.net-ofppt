<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_test.aspx.cs" Inherits="ASP_TP8.Ex2._test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Testing the database</title>
    <meta charset="UTF-16">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body style="font-family: Consolas">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                Table :
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="31px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    style="direction: ltr; font-family: consolas" Width="396px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
    
        <asp:GridView ID="GridView1" runat="server" CellPadding="10" 
            ForeColor="#333333" GridLines="None" CellSpacing="10">
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
    
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
