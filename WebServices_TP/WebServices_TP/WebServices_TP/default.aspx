<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebServices_TP._default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WebServices_TP</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
        }
        .style3
        {
            background-color: #CCFFFF;
        }
        .style4
        {
            text-align: right;
            background-color: #CCFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: xx-large">
        <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Level :</td>
                <td class="style3">
                    <asp:TextBox ID="txt_level" runat="server" TextMode="Number">1</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        Display="Dynamic" style="color: #CC0000;" ControlToValidate="txt_level">Required Field</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    XP : 
                </td>
                <td>
                    <asp:TextBox ID="txt_xp" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btn_adjust" runat="server" onclick="btn_adjust_Click" 
                        Text="Get XP" Width="102px" />
                </td>
            </tr>
        </table>
    
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
    </form>
</body>
</html>
