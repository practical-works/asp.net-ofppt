<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Atelier.aspx.cs" Inherits="Atelier" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contrôles de Vaildation</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="x"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" 
            ErrorMessage="Champ de saisie obligatoire" style="color: #FF0000" 
            ValidationGroup="x"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox2" ControlToValidate="TextBox1" 
            ErrorMessage="Champs non identiques" 
            style="font-weight: 700; color: #FF0066" ValidationGroup="x"></asp:CompareValidator>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="x"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox2" 
            ErrorMessage="Doit être un entier compris entre 0 et 100" MaximumValue="100" 
            MinimumValue="0" style="color: #FF3300" Type="Integer" ValidationGroup="x"></asp:RangeValidator>
        <br />
        <br />
        Tapez <strong>aze<br />
        </strong>
        <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="x"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToValidate="TextBox3" 
            ErrorMessage="Vous n'avez pas taper aze correctement" 
            style="font-weight: 700; color: #FF0066" ValueToCompare="aze" 
            ValidationGroup="x"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="OK" Width="125px" 
            ValidationGroup="x" />
    
        <br />
        <br />
        <br />
        ___________________________________<br />
        <br />
        <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="c"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Doit être paire" 
            style="font-weight: 700; font-style: italic; color: #990099" 
            onservervalidate="FonctionValidation" ValidationGroup="c" 
            ClientValidationFunction="FonctionValidationClient"></asp:CustomValidator>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Valider" ValidationGroup="c" />
    
    </div>
    </form>
</body>
<script type="text/javascript">
    function FonctionValidationClient(sender, args) {
        var val = args.Value;
        if (val % 2 == 0)
            args.IsValid = true;
        else
            args.IsValid = false;
    }
</script>
</html>
