<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex1.aspx.cs" Inherits="ASP_TP2.Ex1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>Choisir vos langages de programmation favoris :</strong><asp:CheckBoxList 
            ID="CheckBoxList1" runat="server">
            <asp:ListItem Value="c">C</asp:ListItem>
            <asp:ListItem Value="cpp">C++</asp:ListItem>
            <asp:ListItem Value="cs">C#</asp:ListItem>
            <asp:ListItem Value="vb">VB.NET</asp:ListItem>
            <asp:ListItem Value="java">Java</asp:ListItem>
            <asp:ListItem Value="pascal">Pascal</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="OK" />
        <br />
        <br />
        <strong>Votre choix est :</strong><br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    
    </div>
    </form>
</body>
</html>
