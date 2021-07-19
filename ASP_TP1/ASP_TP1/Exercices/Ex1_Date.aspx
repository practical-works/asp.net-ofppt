<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex1_Date.aspx.cs" Inherits="Exercices_Ex1_Date" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: 50pt;
            font-family: consolas;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1" 
            style="font-family: ; color: rgb(0,0,0); font-style: normal; font-variant: normal;">
        <strong>Nous sommes le :
        <br />
        </strong></span>
        <span style="font-family: ;font-size:12pt;color:rgb(0,0,0);font-style:normal;font-variant:normal;">
        <br style=" font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; " />
        <asp:Label ID="Label1" runat="server" 
            style="font-size: 40pt; font-family: Consolas" Text="date_jour"></asp:Label>
        </span>
    
    </div>
    </form>
</body>
</html>
