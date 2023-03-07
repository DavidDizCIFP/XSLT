<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
      <lugares>
        <xsl:apply-templates />
      </lugares>
    </xsl:template>
    <xsl:template match="museos/museo">
      <lugar>
        <xsl:attribute name="tipo"><xsl:text>museo</xsl:text></xsl:attribute>
        <ubicación><xsl:attribute name="nome"><xsl:text>cidade</xsl:text></xsl:attribute><xsl:value-of select="@cidade" /></ubicación>
        <ubicación><xsl:attribute name="nome"><xsl:text>pais</xsl:text></xsl:attribute><xsl:value-of select="@pais" /></ubicación>
        <nome><xsl:value-of select="@nome"/></nome>
      </lugar>
    </xsl:template>
</xsl:stylesheet>