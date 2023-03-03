<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <museos>
          <xsl:apply-templates select="museos/museo"/>
        </museos>
    </xsl:template>
    <xsl:template match="museos/museo">
        <museo>
          <nombre><xsl:value-of select="@nome"/></nombre>
          <ciudad><xsl:value-of select="@cidade"/></ciudad>
          <pais><xsl:value-of select="@pais"/></pais>
        </museo>
    </xsl:template>
</xsl:stylesheet>