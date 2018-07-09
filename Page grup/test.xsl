<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Rama</th>
      <th>Nombre</th>
      <th>Areas de Crecimiento</th>
      <th>Objetivos educativos</th>
      <th>Introduccion</th>
      <th>Descripcion</th>
      <th>Duracion</th>
      <th>Materiales</th>
    </tr>
    <xsl:for-each select="catalog/game">
    <tr>
      <td><xsl:value-of select="branch"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="growingAreas"/></td>
      <td><xsl:value-of select="educationalObjective"/></td>
      <td><xsl:value-of select="introduction"/></td>
      <td><xsl:value-of select="description"/></td>
      <td><xsl:value-of select="duration"/></td>
      <td><xsl:value-of select="materials"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
