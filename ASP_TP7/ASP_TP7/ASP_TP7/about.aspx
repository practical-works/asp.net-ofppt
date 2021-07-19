<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="ASP_TP7.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style8
    {
        text-align: justify;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="style8">
        <br />
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor 
        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis 
        nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
        fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in 
        culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit 
        amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore 
        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
        ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor 
        in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
        deserunt mollit anim id est laborum.<br />
        <br />
        Bref, nous sommes des extraterrestres.</p>
    <p>
        Veuillez nous contacter sur notre adresse mail :</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="mailto:xtra@earth.com">xtra@earth.com</asp:HyperLink>
    </p>
</asp:Content>
