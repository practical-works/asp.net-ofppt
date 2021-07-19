<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nbVisite.aspx.cs" Inherits="ASP_TP6.Atelier.nbVisite" %>

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
            text-align: center;
        }
        .style3
        {
            font-family: consolas;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style2">
    
        <br class="style1" />
        <span class="style1"><span class="style3">Nombre de visites</span><br />
        </span>
        <asp:Label ID="Label1" runat="server" 
            style="font-size: 100pt; font-family: consolas" Text="NULL"></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
