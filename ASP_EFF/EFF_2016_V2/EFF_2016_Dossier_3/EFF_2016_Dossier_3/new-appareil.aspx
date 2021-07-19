<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="new-appareil.aspx.cs" Inherits="EFF_2016_Dossier_3.new_appareil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style3">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    HeaderText="Veuillez corriger les erreurs suivantes :" style="color: #FF0000" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Numéro</td>
            <td>
                <asp:TextBox ID="TextBox_num" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox_num" Display="Dynamic" ErrorMessage="Numéro requis" 
                    style="font-weight: 700; color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox_num" Display="Dynamic" 
                    ErrorMessage="Le numéro doit être un entier" style="color: #FF0000" 
                    ValidationExpression="\d+">Nombre entier requis</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Nom</td>
            <td>
                <asp:TextBox ID="TextBox_nom" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox_nom" Display="Dynamic" ErrorMessage="Nom requis" 
                    style="font-weight: 700; color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Date d&#39;achat</td>
            <td>
                <asp:TextBox ID="TextBox_dateAchat" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox_dateAchat" Display="Dynamic" 
                    ErrorMessage="Date d'achat requise" style="font-weight: 700; color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="TextBox_dateAchat" Display="Dynamic" 
                    ErrorMessage="La date d'achat doit être inférieur ou égale à la date courante" 
                    Operator="LessThanEqual" style="color: #FF0000" Type="Date">Date antérieure requise</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Prix d&#39;achat</td>
            <td>
                <asp:TextBox ID="TextBox_prixAchat" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox_prixAchat" Display="Dynamic" 
                    ErrorMessage="Prix d'achat requis" style="font-weight: 700; color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Nombre de contrats</td>
            <td>
                <asp:TextBox ID="TextBox_nbContrats" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox_nbContrats" Display="Dynamic" 
                    ErrorMessage="Nombre de contrats requis" 
                    style="font-weight: 700; color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label_confirm" runat="server" 
                    style="font-weight: 700; color: #009900"></asp:Label>
                <asp:Label ID="Label_error" runat="server" 
                    style="font-weight: 700; color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button_ajouter" runat="server" onclick="Button_ajouter_Click" 
                    Text="Ajouter l'appareil" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
