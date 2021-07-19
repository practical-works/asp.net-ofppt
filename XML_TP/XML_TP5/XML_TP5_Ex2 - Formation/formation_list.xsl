<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="formation">
    <html>
      <head>
        <title>
          <xsl:value-of select="titre"/>
        </title>
      </head>
      <body>
        <h1>
          <xsl:value-of select="titre"/>
        </h1>
        <ol>
          <xsl:for-each select="module">
            <li>
              <b><xsl:value-of select="@repere"/></b>
            </li>
            <ul>
              <li>
                Numéro du semestre : <xsl:value-of select="@semestre"/>
              </li>
              <li>
                <xsl:value-of select="titre"/>
              </li>
              <li>
                <xsl:value-of select="horaire"/> heures
              </li>
              <li>
                <xsl:value-of select="points"/> points ECTS
              </li>
              <li>
                <xsl:if test="count(./programme) >= 1">
                    Programme :
                    <ul>
                      <xsl:for-each select="programme/para">
                        <li>
                          <xsl:value-of select="text()"/>
                        </li>
                      </xsl:for-each>
                    </ul>
                </xsl:if>
              </li>
            </ul>
          </xsl:for-each>
        </ol>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>