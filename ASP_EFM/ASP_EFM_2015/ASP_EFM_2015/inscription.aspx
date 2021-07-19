<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="ASP_EFM_2015.inscription" %>

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
        .style3
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Inscription étudiant<br />
        <table class="style1">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <span style="font-family: RobotoRegular;font-size:12pt;color:rgb(33,33,33);font-style:normal;font-variant:normal;">
                    Nom</span></td>
                <td>
                    <asp:TextBox ID="TextBox_nom" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox_nom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date de naissance</td>
                <td>
                    <asp:TextBox ID="TextBox_dateNaiss" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Téléphone</td>
                <td>
                    <asp:TextBox ID="TextBox_phone" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox_phone" CssClass="style3" Display="Dynamic" 
                        ErrorMessage="RegularExpressionValidator" 
                        ValidationExpression="212-06-/d/d-/d/d-/d/d-/d/d">Format de téléphone incorrect</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Email</td>
                <td>
                    <asp:TextBox ID="TextBox_email" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox_email" CssClass="style3" Display="Dynamic" 
                        ErrorMessage="RegularExpressionValidator" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Format d&#39;email incorrect</asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ControlToValidate="TextBox_email" CssClass="style3" Display="Dynamic" 
                        ErrorMessage="CustomValidator" 
                        onservervalidate="CustomValidator1_ServerValidate">Cet email existe déjà</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Mot de passe</td>
                <td>
                    <asp:TextBox ID="TextBox_pass" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button_inscrire" runat="server" onclick="Button_inscrire_Click" 
                        Text="S'inscrire" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
