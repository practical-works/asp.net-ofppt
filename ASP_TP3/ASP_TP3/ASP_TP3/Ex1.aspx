<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex1.aspx.cs" Inherits="ASP_TP3.Ex1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: consolas;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1">Mot de passe :
        <br />
        </span>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style1"></asp:TextBox>
        <br class="style1" />
        <span class="style1">Retaper le mot de passe :<br />
        </span>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style1"></asp:TextBox>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox1" ControlToValidate="TextBox2" Display="Dynamic" 
            ErrorMessage="Mots de passe non indentiques" 
            style="font-family: consolas; font-size: xx-large; color: #FF0000"></asp:CompareValidator>
        <br class="style1" />
        <asp:Button ID="Button1" runat="server" CssClass="style1" Text="Valider" />
    
    </div>
    </form>
</body>
</html>
