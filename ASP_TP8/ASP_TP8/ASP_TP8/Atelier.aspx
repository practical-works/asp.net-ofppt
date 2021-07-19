<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atelier.aspx.cs" Inherits="ASP_TP8.Atelier" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 236px;
            font-family: consolas;
            height: 40px;
        }
        .style3
        {
            width: 236px;
            text-align: right;
            margin-bottom: 100px;
            text-align: right;
            line-height: normal;
            font-family: consolas;
            height: 178px;
            background-color: #CCCCCC;
        }
        .style4
        {
            font-family: consolas;
        }
        .style5
        {
            height: 40px;
        }
        .style6
        {
            width: 236px;
            text-align: right;
            margin-bottom: 100px;
            text-align: right;
            line-height: normal;
            font-family: consolas;
            height: 45px;
            background-color: #CCCCCC;
        }
        .style7
        {
            height: 45px;
        }
        .style8
        {
            height: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    </td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" Text="Afficher tous les clients" 
                        CssClass="style4" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Filtrer par ville</td>
                <td class="style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        CssClass="style4" Height="25px" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="259px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Liste des clients<br />
                </td>
                <td class="style8">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" style="font-family: consolas" Width="493px">
                        <AlternatingRowStyle BackColor="White" />
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
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
