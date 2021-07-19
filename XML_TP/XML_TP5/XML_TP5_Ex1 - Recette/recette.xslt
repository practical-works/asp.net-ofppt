<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="recette">
    <html>
      <head>
        <title>
          <xsl:value-of select="entete/titre"/>
        </title>
      </head>
      <body>
        <h1>
          <xsl:value-of select="entete/titre"/>
        </h1>
        <xsl:value-of select="entete/auteur"/><br/>
        Remarque : <xsl:value-of select="entete/remarque"/><br/>
        <h2>Procédure</h2>
        <p>
          <xsl:value-of select="procedure"/>
        </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
