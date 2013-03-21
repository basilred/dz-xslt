<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="01.xml" version="1.0">

	<xsl:template match="/persons/person[phone]">
		<p>
    		<xsl:apply-templates/>
    	</p>
	</xsl:template>

	<xsl:template match="/persons/person[phone[@type = 'mobile']]">
    	<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="/persons/person[phone[@type='mobile' and @type='work']]">
    	<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="/persons/person[starts-with(./email, 'login@')]">
    	<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="/persons/person[group = 'html']">
    	<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="/persons/person[login &gt; 3]">
    	<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="/persons/person[phone[@type='work' or @type='mobile'] or email]">
    	<xsl:apply-templates/>
	</xsl:template>

</xsl:stylesheet>