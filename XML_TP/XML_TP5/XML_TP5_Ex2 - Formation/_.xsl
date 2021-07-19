<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="A">
    <html>
      <head>
        <title>A</title>
      </head>
      <body>
        <h1>Content of [A] :</h1>
        <xsl:for-each select="B">
          <xsl:value-of select="text()"/>
          <br/>
        </xsl:for-each>
        <br/>
        <xsl:for-each select="C/X">
          <xsl:value-of select="text()"/>
          <br/>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>  