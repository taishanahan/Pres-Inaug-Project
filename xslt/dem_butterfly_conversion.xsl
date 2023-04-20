<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2000/svg"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="dem_docs" select="collection('../data/Democrat_Presidents?select=*.xml')"/>
    <xsl:variable name="EP" as="xs:integer" select="count($dem_docs//economy[@tone = 'P'])"/>
    <xsl:variable name="EN" as="xs:integer" select="count($dem_docs//economy[@tone = 'N'])"/>
    <xsl:variable name="WP" as="xs:integer" select="count($dem_docs//war[@tone = 'P'])"/>
    <xsl:variable name="WN" as="xs:integer" select="count($dem_docs//war[@tone = 'N'])"/>
    <xsl:variable name="JP" as="xs:integer" select="count($dem_docs//jobs[@tone = 'P'])"/>
    <xsl:variable name="JN" as="xs:integer" select="count($dem_docs//jobs[@tone = 'N'])"/>
    <xsl:variable name="IP" as="xs:integer" select="count($dem_docs//immigration[@tone = 'P'])"/>
    <xsl:variable name="IN" as="xs:integer" select="count($dem_docs//immigration[@tone = 'N'])"/>
    <xsl:variable name="UP" as="xs:integer" select="count($dem_docs//unity[@tone = 'P'])"/>
    <xsl:variable name="UN" as="xs:integer" select="count($dem_docs//unity[@tone = 'N'])"/>
    <xsl:variable name="EDP" as="xs:integer" select="count($dem_docs//education[@tone = 'P'])"/>
    <xsl:variable name="EDN" as="xs:integer" select="count($dem_docs//education[@tone = 'N'])"/>
    <xsl:variable name="PHP" as="xs:integer" select="count($dem_docs//public_health[@tone = 'P'])"/>
    <xsl:variable name="PHN" as="xs:integer" select="count($dem_docs//public_health[@tone = 'N'])"/>
    <xsl:variable name="PREDP" as="xs:integer" select="count($dem_docs//pred[@tone = 'P'])"/>
    <xsl:variable name="PREDN" as="xs:integer" select="count($dem_docs//pred[@tone = 'N'])"/>
    <xsl:variable name="CJP" as="xs:integer" select="count($dem_docs//criminal_justice[@tone = 'P'])"/>
    <xsl:variable name="CJN" as="xs:integer" select="count($dem_docs//criminal_justice[@tone = 'N'])"/>
    
    <xsl:variable name="x" as="xs:integer" select="400"/>
    <xsl:variable name="y1" as="xs:integer" select="-600"/>
    <xsl:variable name="y2" as="xs:integer" select="-290"/>
    <xsl:variable name="bar_height" as="xs:integer" select="25"/>
    <xsl:variable name="multiple" as="xs:integer" select="2"/>
    <xsl:variable name="positive_color" as="xs:string" select="'#42cbf5'"/>
    <xsl:variable name="negative_color" as="xs:string" select="'#429cf5'"/>
    <xsl:template match="/">
        <svg height="1500" width="1500" viewBox="-100, -650, 1500, 1500">
            <text x="{$x}" y="{$y1 - 25}" text-anchor="middle" font-weight="bold" font-size="large" stroke="black">
                Democratic Presidents Positive and Negative Butterfly Graph
            </text>
            <line x1="{$x}" x2="{$x}" y1="{$y1}" y2="{$y2}" stroke="black"/>
            <rect x="{$x}" y="-575" width="{$EP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <text x="{$x + ($EP*$multiple) + 10}" y="-560" stroke="black" text-anchor="middle">
                <xsl:value-of select="$EP"/>
            </text>
            <rect x="{$x - ($EN*$multiple)}" y="-575" width="{$EN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x - ($EN*$multiple) - 10}" y="-560" stroke="black" text-anchor="middle">
                <xsl:value-of select="$EN"/>
            </text>
            <text x="{$x + 500}" y="-560" text-anchor="middle" stroke="black">
                Economy
            </text>
            <rect x="{$x}" y="-545" width="{$WP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <text x="{$x + ($WP*$multiple) + 10}" y="-530" stroke="black" text-anchor="middle">
                <xsl:value-of select="$WP"/>
            </text>
            <rect x="{$x - ($WN*$multiple)}" y="-545" width="{$WN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x - ($WN*$multiple) - 10}" y="-530" stroke="black" text-anchor="middle">
                <xsl:value-of select="$WN"/>
            </text>
            <text x="{$x + 500}" y="-530" text-anchor="middle" stroke="black">
                War
            </text>
            <rect x="{$x}" y="-515" width="{$JP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <text x="{$x + ($JP*$multiple) + 10}" y="-500" stroke="black" text-anchor="middle">
                <xsl:value-of select="$JP"/>
            </text>
            <rect x="{$x - ($JN*$multiple)}" y="-515" width="{$JN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x - ($JN*$multiple) - 10}" y="-500" stroke="black" text-anchor="middle">
                <xsl:value-of select="$JN"/>
            </text>
            <text x="{$x + 500}" y="-500" text-anchor="middle" stroke="black">
                Jobs
            </text>
            <rect x="{$x}" y="-485" width="{$IP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <text x="{$x + ($IP*$multiple) + 10}" y="-470" stroke="black" text-anchor="middle">
                <xsl:value-of select="$IP"/>
            </text>
            <rect x="{$x - ($IN*$multiple)}" y="-485" width="{$IN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x - ($IN*$multiple) - 10}" y="-470" stroke="black" text-anchor="middle">
                <xsl:value-of select="$IN"/>
            </text>
            <text x="{$x + 500}" y="-470" text-anchor="middle" stroke="black">
                Immigration
            </text>
            <rect x="{$x}" y="-455" width="{$UP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <text x="{$x + ($UP*$multiple) + 11}" y="-440" stroke="black" text-anchor="middle">
                <xsl:value-of select="$UP"/>
            </text>
            <rect x="{$x - ($UN*$multiple)}" y="-455" width="{$UN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x - ($UN*$multiple) - 10}" y="-440" stroke="black" text-anchor="middle">
                <xsl:value-of select="$UN"/>
            </text>
            <text x="{$x + 500}" y="-440" text-anchor="middle" stroke="black">
                Unity
            </text>
            <rect x="{$x}" y="-425" width="{$EDP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <text x="{$x + ($EDP*$multiple) + 10}" y="-410" stroke="black" text-anchor="middle">
                <xsl:value-of select="$EDP"/>
            </text>
            <rect x="{$x - ($EDN*$multiple)}" y="-425" width="{$EDN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x - ($EDN*$multiple) - 10}" y="-410" stroke="black" text-anchor="middle">
                <xsl:value-of select="$EDN"/>
            </text>
            <text x="{$x + 500}" y="-410" text-anchor="middle" stroke="black">
                Education
            </text>
            <rect x="{$x}" y="-395" width="{$PHP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <text x="{$x + ($PHP*$multiple) + 10}" y="-380" stroke="black" text-anchor="middle">
                <xsl:value-of select="$PHP"/>
            </text>
            <rect x="{$x - ($PHN*$multiple)}" y="-395" width="{$PHN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x - ($PHN*$multiple) - 10}" y="-380" stroke="black" text-anchor="middle">
                <xsl:value-of select="$PHN"/>
            </text>
            <text x="{$x + 500}" y="-380" text-anchor="middle" stroke="black">
                Public Health
            </text>
            <rect x="{$x}" y="-365" width="{$PREDP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <text x="{$x + ($PREDP*$multiple) + 10}" y="-350" stroke="black" text-anchor="middle">
                <xsl:value-of select="$PREDP"/>
            </text>
            <rect x="{$x - ($PREDN*$multiple)}" y="-365" width="{$PREDN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x - ($PREDN*$multiple) - 10}" y="-350" stroke="black" text-anchor="middle">
                <xsl:value-of select="$PREDN"/>
            </text>
            <text x="{$x + 500}" y="-350" text-anchor="middle" stroke="black">
                Predecessor
            </text>
            <rect x="{$x}" y="-335" width="{$CJP*$multiple}" height="{$bar_height}" fill="{$positive_color}"/>
            <text x="{$x + ($CJP*$multiple) + 10}" y="-320" stroke="black" text-anchor="middle">
                <xsl:value-of select="$CJP"/>
            </text>
            <rect x="{$x - ($CJN*$multiple)}" y="-335" width="{$CJN*$multiple}" height="{$bar_height}" fill="{$negative_color}"/>
            <text x="{$x - ($CJN*$multiple) - 10}" y="-320" stroke="black" text-anchor="middle">
                <xsl:value-of select="$CJN"/>
            </text>
            <text x="{$x + 500}" y="-320" text-anchor="middle" stroke="black">
                Criminal Justice
            </text>
            <text x="{$x + 500}" y="-230" text-anchor="middle" stroke="black">
                Positive
            </text>
            <rect x="{$x + 535}" y="-240" width="10" height="10" fill="{$positive_color}"/>
            <text x="{$x + 500}" y="-200" text-anchor="middle" stroke="black">
                Negative
            </text>
            <rect x="{$x + 535}" y="-210" width="10" height="10" fill="{$negative_color}"/>
        </svg>
    </xsl:template>
</xsl:stylesheet>