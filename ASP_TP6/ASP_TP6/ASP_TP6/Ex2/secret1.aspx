<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="secret1.aspx.cs" Inherits="ASP_TP6.Ex2.secret1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            font-size: 50pt;
        }
        .style4
        {
            color: #000000;
            background-color: #CCCCCC;
        }
        .style5
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #CCCCCC" class="style5">
    <span class="style2"><span ><em><span class="style4">Secret 1</span></em></span><em><br 
            class="style4" />
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="style4"></asp:Label>
        </em>
        <br class="style4" />
        <br />
        </span>
        <asp:Button ID="btn_logout" runat="server" onclick="btn_logout_Click" 
            style="font-size: xx-large" Text="Se déconnecter" />
        <br />
    </div>
    </form>
</body>
</html>
