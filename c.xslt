<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
      <cidades>
        <xsl:for-each select="museos/museo[not(@pais = preceding-sibling::museo/@pais)]">
          <cidade nome="{@cidade}">
            <xsl:for-each select="ancestor::museos/museo[@pais = current()/@pais]">
              <pais><xsl:value-of select="@pais"/></pais>
              <museo><xsl:value-of select="@nome"/></museo>
            </xsl:for-each>
          </cidade>
        </xsl:for-each>
      </cidades>
    </xsl:template>
</xsl:stylesheet>