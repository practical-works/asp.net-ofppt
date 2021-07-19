<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex3.aspx.cs" Inherits="ASP_TP2.Ex3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Ex3.jpg" 
            onclick="ImageMap1_Click">
            <asp:RectangleHotSpot Bottom="104" Left="16" 
                NavigateUrl="http://www.facebook.com" Right="243" Target="_blank" Top="19" 
                AlternateText="Click for Facebook" HotSpotMode="Navigate" />
            <asp:RectangleHotSpot Bottom="104" Left="250" 
                NavigateUrl="http://www.twitter.com" Right="492" Target="_self" Top="19" 
                AlternateText="Click for Twitter" HotSpotMode="Navigate" />
            <asp:CircleHotSpot PostBackValue=" WordPress" 
                AlternateText="Click for WordPress" HotSpotMode="PostBack" Radius="65" X="75" 
                Y="195" />
            <asp:CircleHotSpot AlternateText="Click for BMW" HotSpotMode="PostBack" 
                PostBackValue="BMW" Radius="67" X="247" Y="200" />
            <asp:CircleHotSpot AlternateText="Click for Windows" HotSpotMode="PostBack" 
                PostBackValue="Windows" Radius="69" X="427" Y="202" />
            <asp:PolygonHotSpot AlternateText="Click for Start" 
                Coordinates="251,301,223,347,175,358,208,396,202,448,249,427,300,447,293,397,328,356,276,348" 
                HotSpotMode="PostBack" PostBackValue="Start" />
        </asp:ImageMap>
        <br />
        <asp:Label ID="lblPostBackValue" runat="server" 
            
            style="font-size: xx-large; background-color: #FFFF99; border:2px solid black" 
            Text="............" Width="497px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
