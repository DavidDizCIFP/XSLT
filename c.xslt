<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
      <cidades>
        <xsl:apply-templates />
      </cidades>
    </xsl:template>
    <xsl:template match="museos/museo">
      <cidade>
        <xsl:attribute name="nombre"><xsl:value-of select="@cidade" /></xsl:attribute>
          <pais><xsl:value-of select="@pais"/></pais>
          <museo><xsl:value-of select="@nome"/></museo>
        </cidade>
    </xsl:template>
</xsl:stylesheet>