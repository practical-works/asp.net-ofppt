<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="formation">
    <html>
      <head>
        <title>
          [Tableau] <xsl:value-of select="titre"/>
        </title>
      </head>
      <body>
        <h1>
          <xsl:value-of select="titre"/>
        </h1>
        <table>
          <tr>
            <td>
              <b>Repère</b>
            </td>
            <td>
              <b>Titre</b>
            </td>
            <td>
              <b>Horaire</b>
            </td>
            <td>
              <b>ECTS</b>
            </td>
          </tr>
          <xsl:for-each select="module">
            <tr>
              <td>
                <b>
                  <xsl:value-of select="@repere"/>
                </b>
              </td>
              <td><xsl:value-of select="titre"/></td>
              <td><xsl:value-of select="horaire"/></td>
              <td><xsl:value-of select="points"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>