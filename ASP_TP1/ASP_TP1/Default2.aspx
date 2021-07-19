<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Nom :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderWidth="2px" 
            ontextchanged="TextBox1_TextChanged" Width="554px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Bonjour !"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Cliquez" 
            style="top: 22px; left: 492px; position: absolute; height: 59px; width: 150px" />
        <br />
    
    </div>
    </form>
</body>
</html>
