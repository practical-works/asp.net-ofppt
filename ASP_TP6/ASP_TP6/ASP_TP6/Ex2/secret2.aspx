<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="secret2.aspx.cs" Inherits="ASP_TP6.Ex2.secret2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            text-align: center;
            color: #FFFFFF;
            background-color: #FF9933;
        }
        .style2
        {
            font-size: 50pt;
        }
        .style3
        {
            font-family: consolas;
        }
        .style4
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <span >
    
        <span class="style2">
        <br />
        <br />
        </span>
    
        <span class="style4"><span class="style3"><strong><em>Secret 2</em></strong></span></span></span><span 
            class="style4"><strong><em><br class="style3" />
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="style3"></asp:Label>
        </em></strong>
        </span>
    
        <span class="style2">
        <br />
        <br />
        (Admin Page)<br />
        <br />
        <asp:Button ID="btn_logout" runat="server" onclick="btn_logout_Click" 
            style="font-size: xx-large" Text="Se déconnecter" />
        </span>
        <br />
    
    </div>
    </form>
</body>
</html>
