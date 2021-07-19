<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="note.aspx.cs" Inherits="ASP_EFM_2015.note" %>

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
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Note d&#39;examen<br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Etudiant</td>
                <td>
                    <asp:DropDownList ID="ddl_etudiant" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Cours</td>
                <td>
                    <asp:DropDownList ID="ddl_cours" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Note</td>
                <td>
                    <asp:TextBox ID="txt_note" runat="server"></asp:TextBox>
&nbsp;/ 20</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btn_ajouter" runat="server" onclick="btn_ajouter_Click" 
                        Text="Ajouter la note" />
&nbsp;<asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #33CC33"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
