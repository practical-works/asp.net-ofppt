<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_.aspx.cs" Inherits="ASP_EFM_2015._" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Date :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="OK" />
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="CompareValidator" 
            Operator="GreaterThanEqual" style="font-weight: 700; color: #0066FF" 
            Type="Date">Date inférieure à aujourd&#39;hui</asp:CompareValidator>
    
    </div>
    </form>
</body>
</html>
