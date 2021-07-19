<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex1.aspx.cs" Inherits="ASP_TP8.Ex1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gestion des clients</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            vertical-align:top;
        }
        .style3
        {
            width: 168px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:TextBox ID="txt_id" placeholder="id" runat="server" Width="59px" 
                    TextMode="Number"></asp:TextBox>
                <asp:Button ID="btn_id" runat="server" Text="OK" onclick="btn_id_Click" />
            </td>
            <td class="style2">
                    <asp:Button ID="btn_ajouter" runat="server" onclick="btn_ajouter_Click" 
                        Text="Ajouter" />
                <asp:Button ID="btn_modifier" runat="server" onclick="btn_modifier_Click" Text="Modifier" />
                <asp:Button ID="btn_supprimer" runat="server" onclick="btn_supprimer_Click" 
                        Text="Supprimer" />
                    </td>
            <td>
                    <asp:TextBox ID="txt_filter" placeholder="Saisir mot clé à rechercher" runat="server" Width="264px"></asp:TextBox>
                    <asp:Button ID="btn_rechercher" runat="server" Text="OK" 
                        onclick="btn_rechercher_Click" />
                    </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                    <br />
                    <asp:TextBox ID="txt_nom" placeholder="Nom" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_prenom" placeholder="Prénom" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_adresse" placeholder="Adresse" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txt_ville" placeholder="Ville" runat="server"></asp:TextBox>
                    <br />
                </td>
            <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" Width="304px">
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
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                    <asp:Label ID="lbl_error" runat="server" 
                        style="font-weight: 700; color: #FF0000"></asp:Label>
                </td>
        </tr>
    </table>
    </form>
</body>
</html>
