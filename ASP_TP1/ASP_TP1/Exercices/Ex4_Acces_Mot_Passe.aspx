<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ex4_Acces_Mot_Passe.aspx.cs" Inherits="Exercices_Ex4_Acces_Mot_Passe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accés par mot de passe</title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style2">
    
        <asp:Label ID="Label1" runat="server" CssClass="style1" 
            Text="Nom d'utilisateur"></asp:Label>
        <br class="style1" />
        <asp:TextBox ID="TextBox_username" runat="server" CssClass="style1"></asp:TextBox>
        <br class="style1" />
        <br class="style1" />
        <asp:Label ID="Label2" runat="server" CssClass="style1" Text="Mot de passe"></asp:Label>
        <br class="style1" />
        <asp:TextBox ID="TextBox_password" runat="server" CssClass="style1" 
            TextMode="Password"></asp:TextBox>
        <br class="style1" />
        <br class="style1" />
        <asp:Button ID="Button1" runat="server" CssClass="style1" 
            onclick="Button1_Click" Text="Connexion" Width="288px" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label_result" runat="server" 
            style="font-size: xx-large; font-weight: 700"></asp:Label>
    
    </div>
    </form>
</body>
</html>
