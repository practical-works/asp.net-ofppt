<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex4.aspx.cs" Inherits="ASP_TP3.Ex4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: large;
            font-family: SimSun-ExtB;
        }
        .style2
        {
            width: 442px;
        }
        .style3
        {
            width: 442px;
            height: 6px;
        }
        .style4
        {
            height: 6px;
        }
        .style5
        {
            width: 442px;
            height: 48px;
        }
        .style6
        {
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: SimSun-ExtB; font-size: x-large">
    
        <span class="style1"><br />
        </span>
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style2">
    
        <span class="style1"><strong>Informations de connexion</strong></span></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">Adresse électronique :
        </span></td>
                <td>
                    <span class="style1">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style1"></asp:TextBox>
        </span></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">Mot de passe :
        </span></td>
                <td>
                    <span class="style1">
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style1"></asp:TextBox>
        </span></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">Entrez le mot de passe à nouveau :
        </span></td>
                <td>
                    <span class="style1">
        <asp:TextBox ID="TextBox3" runat="server" CssClass="style1"></asp:TextBox>
        </span></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <span class="style1">
        <strong>Informations personelles</strong><br />
        </span></td>
                <td class="style4">
                    </td>
                <td class="style4">
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    <span class="style1">Prénom :
        <br class="style1" />
        </span></td>
                <td class="style6">
                    <span class="style1">
        <asp:TextBox ID="TextBox4" runat="server" CssClass="style1"></asp:TextBox>
        </span></td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">Nom :
        <asp:TextBox ID="TextBox5" runat="server" CssClass="style1"></asp:TextBox>
        <br class="style1" />
        </span></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">Adresse :
        <asp:TextBox ID="TextBox6" runat="server" CssClass="style1"></asp:TextBox>
        <br class="style1" />
        </span></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">Etat :
        <asp:TextBox ID="TextBox7" runat="server" CssClass="style1"></asp:TextBox>
&nbsp;Code postal :
        <asp:TextBox ID="TextBox8" runat="server" CssClass="style1"></asp:TextBox>
        <br class="style1" />
        </span></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">Téléphone :
        <asp:TextBox ID="TextBox9" runat="server" CssClass="style1"></asp:TextBox>
        <br />
        <br />
        </span></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">
        <strong>Informations de carte de crédit</strong><br />
        </span></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">Type de carte :
        <asp:RadioButton ID="RadioButton1" runat="server" />
        <asp:RadioButton ID="RadioButton2" runat="server" />
        <br class="style1" />
        </span></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">Numéro de carte :
        <asp:TextBox ID="TextBox11" runat="server" CssClass="style1"></asp:TextBox>
        <br class="style1" />
        </span></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <span class="style1">Date d&#39;expiration :
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        </span>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
        <asp:Button ID="Button1" runat="server" CssClass="style1" Text="Button" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
