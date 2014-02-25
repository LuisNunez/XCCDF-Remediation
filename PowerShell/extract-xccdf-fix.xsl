<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:cdf="http://checklists.nist.gov/xccdf/1.1" >
<xsl:output method="text"/>
<xsl:template match="/">#             
# STIG Benchmark XSLT
# This transform extracts the script content from the fix element of the STIG XCCDF benchmark.

Benchmark Title:    <xsl:value-of select="cdf:Benchmark/cdf:title"/>
Benchmark Description:    <xsl:value-of select="cdf:Benchmark/cdf:description"/>
    <!-- for loop to iterate through rules -->
    <xsl:for-each select="cdf:Benchmark//cdf:Rule">
-----------------------------------------------------------                             
# Rule TITLE <xsl:value-of select="cdf:title"/>
###########################################################
        <xsl:value-of select="cdf:fix"/>
###########################################################
    </xsl:for-each>
                 
</xsl:template>
</xsl:stylesheet>
