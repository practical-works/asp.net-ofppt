<%@ Page Title="Page d'accueil" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Bienvenue dans ASP.NET!
    </h2>
    <p>
        Pour en savoir plus sur ASP.NET, consultez <a href="http://www.asp.net" title="Site Web ASP.NET">www.asp.net</a>.
    </p>
    <p>
        Vous pouvez également trouver de la <a href="http://go.microsoft.com/fwlink/?LinkID=152368"
            title="Documentation ASP.NET sur MSDN">documentation sur ASP.NET sur MSDN</a>.
    </p>
<p>
        <asp:Label ID="Label1" runat="server" BackColor="Yellow" Font-Bold="True" 
            Font-Size="20pt" Text="Ceci est mon label"></asp:Label>
    </p>
<p>
        &nbsp;</p>
</asp:Content>
