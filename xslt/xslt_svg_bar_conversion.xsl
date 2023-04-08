<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2000/svg"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="REL" as="xs:integer" select="count(//religion)"/>
    <xsl:variable name="DEM" as="xs:integer" select="count(//democracy)"/>
    <xsl:variable name="RACE" as="xs:integer" select="count(//race)"/>
    <xsl:variable name="CONG" as="xs:integer" select="count(//congress)"/>
    <xsl:variable name="DIPLO" as="xs:integer" select="count(//diplomacy)"/>
    <xsl:variable name="INFRA" as="xs:integer" select="count(//infrastructure)"/>
    <xsl:variable name="REG" as="xs:integer" select="count(//regulation)"/>
    <xsl:variable name="TRADE" as="xs:integer" select="count(//trade)"/>  
    
    <xsl:variable name="x1" as="xs:integer" select="0"/>
    <xsl:variable name="x2" as="xs:integer" select="750"/>
    <xsl:variable name="y1" as="xs:integer" select="-525"/>
    <xsl:variable name="y2" as="xs:integer" select="0"/>
    <xsl:variable name="bar_width" as="xs:integer" select="50"/>
    <xsl:variable name="bar_spacing" as="xs:integer" select="40"/>
    <xsl:variable name="multiple" as="xs:integer" select="50"/>
    <xsl:variable name="pres" select="address/@president"/>  
    <xsl:variable name="term" select="address/@term"/>
    <xsl:variable name="party" select="address/@party"/>
    <xsl:variable name="color">
        <xsl:if test="$party eq 'R'">
            <xsl:text>red</xsl:text>
        </xsl:if>
        <xsl:if test="$party eq 'D'">
            <xsl:text>blue</xsl:text>
        </xsl:if>
    </xsl:variable>
    
    <xsl:template match="/">
        <svg height="1500" width="1500" viewBox="-100, -650, 1500, 1500">
            <line x1="{$x1}" x2="{$x1}" y1="{$y1}" y2="{$y2}" stroke="black" stroke-linecap="square"/>
            <line x1="{$x1}" x2="{$x2}" y1="{$y2}" y2="{$y2}" stroke="black" stroke-linecap="square"/>
            <xsl:for-each select="1 to 10">
                <line x1="{$x1}" x2="{$x2}" y1="-{. * $multiple}" y2="-{. * $multiple}" stroke="grey" stroke-linecap="square" stroke-dasharray="10,10"/>
                <text x="-25" y="-{. * $multiple - 5}" stroke="black">
                    <xsl:value-of select="."/>
                </text>
            </xsl:for-each>
            <text x="-60" y="{($y1 + $y2) div 2}" stroke="black" font-weight="bold" writing-mode="tb" text-anchor="middle">
                Count
            </text>
            <text x="{($x1 + $x2) div 2}" y="60" stroke="black" font-weight="bold" text-anchor="middle">
                Theme
            </text>
            <text x="{($x1 + $x2) div 2}" y="-550" stroke="black" font-weight="bold" font-size="large" text-anchor="middle">
                <xsl:value-of select="$pres"/> Other Themes Bar Graph (Term <xsl:value-of select="$term"/>)
            </text>
            
            <rect height="{$REL * $multiple}" width="{$bar_width}" x="25" y="-{$REL * $multiple}" fill="{$color}"/>
            <text x="50" y="25" stroke="black" text-anchor="middle">
                Religion
            </text>
            <rect height="{$DEM * $multiple}" width="{$bar_width}" x="115" y="-{$DEM * $multiple}" fill="{$color}"/>
            <text x="140" y="25" stroke="black" text-anchor="middle">
                Democracy
            </text>
            <rect height="{$RACE * $multiple}" width="{$bar_width}" x="205" y="-{$RACE * $multiple}" fill="{$color}"/>
            <text x="230" y="25" stroke="black" text-anchor="middle">
                Race
            </text>
            <rect height="{$CONG * $multiple}" width="{$bar_width}" x="295" y="-{$CONG * $multiple}" fill="{$color}"/>
            <text x="320" y="25" stroke="black" text-anchor="middle">
                Congress
            </text>
            <rect height="{$DIPLO * $multiple}" width="{$bar_width}" x="385" y="-{$DIPLO * $multiple}" fill="{$color}"/>
            <text x="410" y="25" stroke="black" text-anchor="middle">
                Diplomacy
            </text>
            <rect height="{$INFRA * $multiple}" width="{$bar_width}" x="475" y="-{$INFRA * $multiple}" fill="{$color}"/>
            <text x="490" y="25" stroke="black" text-anchor="middle">
                Infra
            </text>
            <rect height="{$REG * $multiple}" width="{$bar_width}" x="565" y="-{$REG * $multiple}" fill="{$color}"/>
            <text x="590" y="25" stroke="black" text-anchor="middle">
                Regulation
            </text>
            <rect height="{$TRADE * $multiple}" width="{$bar_width}" x="655" y="-{$TRADE * $multiple}" fill="{$color}"/>
            <text x="680" y="25" stroke="black" text-anchor="middle">
                Trade
            </text>
        </svg>
    </xsl:template>
</xsl:stylesheet>