<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
								xmlns:oai="http://www.openarchives.org/OAI/2.0/" xmlns:mods="http://www.loc.gov/mods/v3">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <record>
      <oai_id><xsl:value-of select="oai:OAI-PMH/oai:GetRecord/oai:record/oai:header/oai:identifier"/></oai_id>
      <title><xsl:value-of select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:mods/mods:titleInfo[1]/mods:title[1]"/></title>
      <url><xsl:value-of select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:url[@usage='primary display'][1]"/></url>
      <thumburl><xsl:value-of select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:url[@access='preview'][1]"/></thumburl>
      <rights><xsl:value-of select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:accessCondition[1]"/></rights>
      <description><xsl:value-of select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:note[@type='content'][1]"/></description>
      <contributing_institution><xsl:value-of select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:note[@type='ownership'][1]"/></contributing_institution>
      <creator>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:name[mods:role[contains(./mods:roleTerm,'reator')]]/mods:namePart">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
      </creator>
      <date>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:dateCreated[@keyDate='yes']">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
      </date>
      <publisher>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:publisher">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
      </publisher>
      <location>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:subject/mods:geographic">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
      </location>
      <subject>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:subject/mods:topic">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:subject/mods:name/mods:namePart">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:subject/mods:titleInfo/mods:title">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
      </subject>
      <language>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:language/mods:languageTerm">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
      </language>
      <format>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:physicalDescription/mods:form">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:genre">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
      </format>
      <type>
        <xsl:for-each select="oai:OAI-PMH/oai:GetRecord/oai:record//mods:typeOfResource">
          <data><xsl:value-of select="current()"/></data>
        </xsl:for-each>
      </type>
    </record>
  </xsl:template>
</xsl:stylesheet>
