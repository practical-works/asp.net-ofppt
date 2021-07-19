<%@ Page Title="" Language="C#" MasterPageFile="~/Ex2/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ASP_TP8.Ex2._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            width: 222px;
        }
        .style6
        {
            width: 21px;
        }
        .style1
        {
            
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <h1 id="welcome" runat="server">
    Bienvenue
    </h1>
        <table class="style1">
            <tr>
                <td class="style5">
                <video controls="controls" preload="metadata" poster="mesachats_logo.png" width="500">
	            <source src="img/Park.ogv">Compatiblité plz!</video>
                    &nbsp;</td>
                <td class="style6">&nbsp;</td>
                <td>
                <h2 style="text-align: left">Mes Achats</h2>
                <h3 style="text-align: left">Commandez en ligne</h3>
                <p style="text-align: justify">
                    Le commerce électronique (ou commerce en ligne, vente en ligne ou à distance, 
                    parfois cybercommerce) est l&#39;échange pécuniaire de biens, de services et 
                    d&#39;informations par l&#39;intermédiaire des réseaux informatiques, notamment 
                    Internet. On emploie également la dénomination anglaise e-commerce. Dans le 
                    cadre du commerce inter-entreprises, on utilise depuis de nombreuses années des 
                    réseaux de type Échange de données informatisé (EDI). Des transactions 
                    électroniques se réalisent également sur les réseaux téléphoniques mobiles. On 
                    parle de m-commerce (mobile commerce). Dans un contexte de contraintes 
                    environnementales fortes, le développement de la vente à distance tend à 
                    transformer les problématiques de logistique. En France, les professionnels du 
                    secteur sont rassemblés au sein de la fédération du commerce électronique et de 
                    la vente à distance (FEVAD).</p></td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Content>

