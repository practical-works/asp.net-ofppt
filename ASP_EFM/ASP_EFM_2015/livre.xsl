<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="livre">
    <html>
      <head>
        <title>Livre</title>
      </head>
      <body>
        <ul>
          <xsl:for-each select="formation">
            <li>
              <xsl:value-of select="titre"/>
              <ul>
                <xsl:for-each select="modules/module">
                  <li>
                    <xsl:value-of select="text()"/>
                  </li>
                </xsl:for-each>
              </ul>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>