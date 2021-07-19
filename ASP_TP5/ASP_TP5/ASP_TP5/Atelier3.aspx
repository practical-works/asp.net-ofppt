<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atelier3.aspx.cs" Inherits="ASP_TP5.Atelier3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body id="body1" runat="server">
    <form id="form1" runat="server">
    <div style="font-size: xx-large">
    
        Bienvenue dans votre espace personnel<br />
        <br />
        Mémo :<br />
        <asp:TextBox ID="TextBox_memo" runat="server" AutoPostBack="True" Height="46px" 
            style="font-size: x-large" Width="674px" 
            ontextchanged="TextBox_memo_TextChanged"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />
        Thème :<br />
        <asp:DropDownList ID="DropDownList_backColor" runat="server" 
            AutoPostBack="True" 
            onselectedindexchanged="DropDownList_backColor_SelectedIndexChanged" 
            style="font-size: x-large" Width="390px">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
