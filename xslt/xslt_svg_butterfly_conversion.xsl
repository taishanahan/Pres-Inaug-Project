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
    <xsl:variable name="y2" as="xs:integer" select="-260"/>
    <xsl:variable name="bar_height" as="xs:integer" select="25"/>
    <xsl:variable name="multiple" as="xs:integer" select="25"/>
    <xsl:variable name="positive_color" as="xs:string" select="'blue'"/>
    <xsl:variable name="negative_color" as="xs:string" select="'red'"/>
    <xsl:variable name="pres" select="address/@president"/> 
    <xsl:variable name="term" select="address/@term"/>
    <xsl:template match="/">
        <svg height="1500" width="1500" viewBox="-100, -650, 1500, 1500">
            <text x="{$x}" y="{$y1 - 25}" text-anchor="middle" font-weight="bold" font-size="large" stroke="black">
                <xsl:value-of select="$pres"/> Positive and Negative Tone Butterfly Graph (Term <xsl:value-of select="$term"/>)
            </text>
            <line x1="{$x}" x2="{$x}" y1="{$y1}" y2="{$y2}" stroke="black"/>
            <rect x="{$x}" y="-575" width="{$EP*10}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($EN*$multiple)}" y="-575" width="{$EN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x + 350}" y="-560" text-anchor="middle" stroke="black">
                Economy
            </text>
            <rect x="{$x}" y="-545" width="{$WP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($WN*$multiple)}" y="-545" width="{$WN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x + 350}" y="-530" text-anchor="middle" stroke="black">
                War
            </text>
            <rect x="{$x}" y="-515" width="{$JP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($JN*$multiple)}" y="-515" width="{$JN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x + 350}" y="-500" text-anchor="middle" stroke="black">
                Jobs
            </text>
            <rect x="{$x}" y="-485" width="{$IP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($IN*$multiple)}" y="-485" width="{$IN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x + 350}" y="-470" text-anchor="middle" stroke="black">
                Immigration
            </text>
            <rect x="{$x}" y="-455" width="{$UP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($UN*$multiple)}" y="-455" width="{$UN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x + 350}" y="-440" text-anchor="middle" stroke="black">
                Unity
            </text>
            <rect x="{$x}" y="-425" width="{$EDP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($EDN*$multiple)}" y="-425" width="{$EDN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x + 350}" y="-410" text-anchor="middle" stroke="black">
                Education
            </text>
            <rect x="{$x}" y="-395" width="{$PHP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($PHN*$multiple)}" y="-395" width="{$PHN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x + 350}" y="-380" text-anchor="middle" stroke="black">
                Public Health
            </text>
            <rect x="{$x}" y="-365" width="{$PREDP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($PREDN*$multiple)}" y="-365" width="{$PREDN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x + 350}" y="-350" text-anchor="middle" stroke="black">
                Predecessor
            </text>
            <rect x="{$x}" y="-335" width="{$CJP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($CJN*$multiple)}" y="-335" width="{$CJN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x + 350}" y="-320" text-anchor="middle" stroke="black">
                Criminal Justice
            </text>
            <rect x="{$x}" y="-305" width="{$TAXP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <rect x="{$x - ($TAXN*$multiple)}" y="-305" width="{$TAXN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>  
            <text x="{$x + 350}" y="-290" text-anchor="middle" stroke="black">
                Tax
            </text>
        </svg>
    </xsl:template>
</xsl:stylesheet>