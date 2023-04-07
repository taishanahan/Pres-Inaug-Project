<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2000/svg"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="EP" as="xs:integer" select="count(//economy/@tone['P'])"/>
    <xsl:variable name="EN" as="xs:integer" select="count(//economy/@tone['N'])"/>
    <xsl:variable name="WP" as="xs:integer" select="count(//war/@tone['P'])"/>
    <xsl:variable name="WN" as="xs:integer" select="count(//war/@tone['N'])"/>
    <xsl:variable name="JP" as="xs:integer" select="count(//jobs/@tone['P'])"/>
    <xsl:variable name="JN" as="xs:integer" select="count(//jobs/@tone['N'])"/>
    <xsl:variable name="REL" as="xs:integer" select="count(//religion)"/>
    <xsl:variable name="DEM" as="xs:integer" select="count(//democracy)"/>
    <xsl:variable name="IP" as="xs:integer" select="count(//immigration/@tone['P'])"/>
    <xsl:variable name="IN" as="xs:integer" select="count(//immigration/@tone['N'])"/>
    <xsl:variable name="RACE" as="xs:integer" select="count(//race)"/>
    <xsl:variable name="UP" as="xs:integer" select="count(//unity/@tone['P'])"/>
    <xsl:variable name="UN" as="xs:integer" select="count(//unity/@tone['N'])"/>
    <xsl:variable name="EDP" as="xs:integer" select="count(//education/@tone['P'])"/>
    <xsl:variable name="EDN" as="xs:integer" select="count(//education/@tone['N'])"/>
    <xsl:variable name="PHP" as="xs:integer" select="count(//public_health/@tone['P'])"/>
    <xsl:variable name="PHN" as="xs:integer" select="count(//public_health/@tone['N'])"/>
    <xsl:variable name="PREDP" as="xs:integer" select="count(//pred/@tone['P'])"/>
    <xsl:variable name="PREDN" as="xs:integer" select="count(//pred/@tone['N'])"/>
    <xsl:variable name="CJP" as="xs:integer" select="count(//criminal_justice/@tone['P'])"/>
    <xsl:variable name="CJN" as="xs:integer" select="count(//criminal_justice/@tone['N'])"/>
    <xsl:variable name="CONG" as="xs:integer" select="count(//congress)"/>
    <xsl:variable name="TAXP" as="xs:integer" select="count(//tax/@tone['P'])"/>
    <xsl:variable name="TAXN" as="xs:integer" select="count(//tax/@tone['N'])"/>
    <xsl:variable name="DIPLO" as="xs:integer" select="count(//diplomacy)"/>
    <xsl:variable name="INFRA" as="xs:integer" select="count(//infrastructure)"/>
    <xsl:variable name="REG" as="xs:integer" select="count(//regulation)"/>
    <xsl:variable name="TRADE" as="xs:integer" select="count(//trade)"/>  
    
    <xsl:variable name="x" as="xs:integer" select="400"/>
    <xsl:variable name="y1" as="xs:integer" select="-600"/>
    <xsl:variable name="y2" as="xs:integer" select="-275"/>
    <xsl:variable name="bar_height" as="xs:integer" select="25"/>
    <xsl:variable name="positive_color" as="xs:string" select="'blue'"/>
    <xsl:variable name="negative_color" as="xs:string" select="'red'"/>
    
    <xsl:template match="/">
        <svg height="1500" width="1500" viewBox="-100, -650, 1500, 1500">
            <line x1="{$x}" x2="{$x}" y1="{$y1}" y2="{$y2}" stroke="black"/>
            <rect x="{$x}" y="-575" width="{$EP*50}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($EN*50)}" y="-575" width="{$EN*50}" height="{$bar_height}" fill="{$negative_color}"/>
            <rect x="{$x}" y="-545" width="{$WP*50}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($WN*50)}" y="-545" width="{$WN*50}" height="{$bar_height}" fill="{$negative_color}"/>
            <rect x="{$x}" y="-515" width="{$JP*50}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($JN*50)}" y="-515" width="{$JN*50}" height="{$bar_height}" fill="{$negative_color}"/>
            <rect x="{$x}" y="-495" width="{$IP*50}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($IN*50)}" y="-495" width="{$IN*50}" height="{$bar_height}" fill="{$negative_color}"/>
            <rect x="{$x}" y="-465" width="{$UP*50}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($UN*50)}" y="-465" width="{$UN*50}" height="{$bar_height}" fill="{$negative_color}"/>
            <rect x="{$x}" y="-435" width="{$EDP*50}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($EDN*50)}" y="-435" width="{$EDN*50}" height="{$bar_height}" fill="{$negative_color}"/>
            <rect x="{$x}" y="-405" width="{$PHP*50}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($PHN*50)}" y="-405" width="{$PHN*50}" height="{$bar_height}" fill="{$negative_color}"/>
            <rect x="{$x}" y="-375" width="{$PREDP*50}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($PREDN*50)}" y="-375" width="{$PREDN*50}" height="{$bar_height}" fill="{$negative_color}"/>
            <rect x="{$x}" y="-345" width="{$CJP*50}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($CJN*50)}" y="-345" width="{$CJN*50}" height="{$bar_height}" fill="{$negative_color}"/>
            <rect x="{$x}" y="-315" width="{$TAXP*50}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($TAXN*50)}" y="-315" width="{$TAXN*50}" height="{$bar_height}" fill="{$negative_color}"/>
            
            <line x1="150" x2="150" y1="-150" y2="300" stroke="black"/>
            <line x1="150" x2="750" y1="300" y2="300" stroke="black"/>
            <rect x="{$x}" y="-575" width="{$REL*50}" height="{$bar_height}" fill="{$positive_color}"/>
            
        </svg>
    </xsl:template>
</xsl:stylesheet>