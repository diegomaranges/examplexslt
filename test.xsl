<xsl:stylesheet version="1.0">
  <xsl:strip-space elements="*"/>
  <xsl:template match="text">
    <root>
      <layout-master-set>
      <simple-page-master master-name="page-layout">
        <region-body margin="2.5cm" region-name="body" background-color="#dddddd"/>
      </simple-page-master></layout-master-set><page-sequence master-reference="page-layout">
      <flow flow-name="body">
        <xsl:apply-templates select="para"/>
      </flow></page-sequence>
    </root>
  </xsl:template>
  <xsl:template match="para">
    <block>
      <xsl:apply-templates select="text()"/>
    </block>
  </xsl:template>
</xsl:stylesheet>
