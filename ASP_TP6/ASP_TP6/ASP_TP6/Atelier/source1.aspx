<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="source1.aspx.cs" Inherits="ASP_TP6.Atelier.source1" %>

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
            width: 164px;
            text-align: right;
            font-size: x-large;
        }
        .style3
        {
            font-size: xx-large;
        }
        .style4
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><span class="style3">Page source</span></strong><br />
        <table class="style1">
            <tr>
                <td class="style2">
                    Nom :</td>
                <td>
                    <asp:TextBox ID="TextBox_nom" runat="server" CssClass="style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Prénom :</td>
                <td>
                    <asp:TextBox ID="TextBox_prenom" runat="server" CssClass="style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="style4" 
                        onclick="Button1_Click" Text="Envoyer" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
