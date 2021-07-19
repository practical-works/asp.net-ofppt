<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex2.aspx.cs" Inherits="ASP_TP2.Ex2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>Calendrier league des champions 2016</strong><br />
        <br />
        <asp:DropDownList ID="listMatch" runat="server" AutoPostBack="True" 
             onselectedindexchanged="listMatch_SelectedIndexChanged" Height="19px" 
            Width="326px">
            <asp:ListItem>Aucun</asp:ListItem>
            <asp:ListItem>Real Madrid - AS Rome</asp:ListItem>
            <asp:ListItem>A - B</asp:ListItem>
            <asp:ListItem>C - D</asp:ListItem>
            <asp:ListItem>E - F</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Calendar ID="calDate" runat="server" BackColor="White" BorderColor="Black" 
            BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" 
            ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Visible="False" 
            Width="330px" onselectionchanged="calDate_SelectionChanged">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>
        <br />
        <asp:Label ID="lblMatchs" runat="server" style="font-weight: 700"></asp:Label>
    
        <br />
        <br />
        <asp:Label ID="Label_infos" runat="server" 
            style="font-style: italic; color: #666666"></asp:Label>
    
    </div>
    </form>
</body>
</html>
