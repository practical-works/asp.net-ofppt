<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tous-cours.aspx.cs" Inherits="ASP_EFM_2015.tous_cours" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    Professeur</td>
                <td>
                    <asp:DropDownList ID="ddl_prof" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddl_prof_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Salle</td>
                <td>
                    <asp:TextBox ID="txt_salle" runat="server" 
                        ontextchanged="txt_salle_TextChanged"></asp:TextBox>
                    <asp:Button ID="btn_salle" runat="server" onclick="btn_salle_Click" Text="OK" />
                </td>
            </tr>
            <tr>
                <td>
                    Cours</td>
                <td>
                    <asp:GridView ID="gridView_cours" runat="server" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
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
