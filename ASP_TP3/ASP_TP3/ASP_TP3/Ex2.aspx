<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex2.aspx.cs" Inherits="ASP_TP3.Ex2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: Moire;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1">Taper &quot;Vrai&quot; : </span>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style1"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*" 
            style="font-family: moire; font-size: xx-large; font-weight: 700; color: #FF0000" 
            ValueToCompare="Vrai"></asp:CompareValidator>
        <br class="style1" />
        <asp:Button ID="Button1" runat="server" CssClass="style1" Text="Valider" />
    
    </div>
    </form>
</body>
</html>
