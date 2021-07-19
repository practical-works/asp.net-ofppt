<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="authentification.aspx.cs" Inherits="ASP_EFM_2015.authentification" %>

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
    
        A<span 
            style="font-family: RobotoRegular;font-size:12pt;color:rgb(33,33,33);font-style:normal;font-variant:normal;">uthentification<br 
            style=" font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; " />
        </span>
        <table class="style1">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Email</td>
                <td>
                    <asp:TextBox ID="TextBox_mail" runat="server"></asp:TextBox>
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
                    <asp:Button ID="Button_login" runat="server" onclick="Button_login_Click" 
                        Text="Se connecter" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
