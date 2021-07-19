<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="inscrire-participant.aspx.cs" Inherits="EFF_2017_Dossier_3.inscrire_participant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            text-align: right;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style2">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label_error" runat="server" 
                    style="font-weight: 700; color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                ID</td>
            <td class="style4">
                <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_id" style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Nom</td>
            <td class="style4">
                <asp:TextBox ID="txt_nom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Prénom</td>
            <td class="style4">
                <asp:TextBox ID="txt_prenom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Email</td>
            <td class="style4">
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txt_email" CssClass="style5" 
                    ValidationExpression="\w+@\w+\.\w+">L&#39;email doit être valide</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Mot de passe</td>
            <td class="style4">
                <asp:TextBox ID="txt_pass" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_pass" style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Confirmation de mot de passe</td>
            <td class="style4">
                <asp:TextBox ID="txt_pass2" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txt_pass" ControlToValidate="txt_pass2" CssClass="style5">Les deux mots de passe doivent se correspondre</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btn_inscrire" runat="server" onclick="btn_inscrire_Click" 
                    Text="S'inscrire" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
