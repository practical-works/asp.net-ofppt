<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atelier.aspx.cs" Inherits="ASP_TP5.Atelier" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
        .on
        {
            box-shadow: 5px 5px 0px black;
            border: 2px solid black;
            padding: 10px 50px;
        }
        .on:hover
        {
            box-shadow: 5px 5px 10px black;
            border: 2px solid black;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large">
    
        Page source<br />
        <br />
        Nom :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style1"></asp:TextBox>
        <br />
       Prénom :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style1"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="style1" 
            onclick="Button1_Click" Text="Conserver dans les cookies" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" CssClass="style1" 
            onclick="Button2_Click" Text="Rediriger (Get)" />
    
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" CssClass="style1" 
            onclick="Button3_Click" Text="Transférer (Post)" />
    
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            style="font-size: x-large" Text="Conserver l'état  (ViewState)" />
    
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            style="font-size: x-large; font-weight: 700;" 
            Text="ON" CssClass="on" />
    
    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
