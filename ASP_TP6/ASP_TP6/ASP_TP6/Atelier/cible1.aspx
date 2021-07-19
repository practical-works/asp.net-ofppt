<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cible1.aspx.cs" Inherits="ASP_TP6.Atelier.cible1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            color: #0066CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong><span class="style2">Page cible 1</span><br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="_null_"></asp:Label>
        <br />
        <br />
        </strong>
    
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Atelier/cible2.aspx" 
            style="font-size: x-large; font-style: italic">Aller à l&#39;autre page</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
