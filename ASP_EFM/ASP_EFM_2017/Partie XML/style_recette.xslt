<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="recette">
    <html>
      <head>
        <title>Recette</title>
      </head>
      <body>
        
        <h1>
          <xsl:value-of select="nom"/>
        </h1>
        
        Durée de préparation : <xsl:value-of select="preparation/@value"/> minutes
        Durée de cuisson : <xsl:value-of select="cuisson/@value"/>
        Durée de repos : <xsl:value-of select="repos/@value"/>

        <h2>Ingrédients</h2>
        <xsl:for-each select="ingredients/i">
          <xsl:value-of select="nbre"/> <xsl:value-of select="nom"/> 
          <xsl:value-of select="poids"/> <xsl:value-of select="poids/@unit"/>
          <br/>
        </xsl:for-each>

        <br/>
        <h2>Recette</h2>
        <xsl:for-each select="guide/block">
          <xsl:value-of select="text()"/>
        </xsl:for-each>
        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
