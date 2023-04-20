<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2000/svg"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="x1" as="xs:integer" select="0"/>
    <xsl:variable name="x2" as="xs:integer" select="1260"/>
    <xsl:variable name="y1" as="xs:integer" select="-525"/>
    <xsl:variable name="y2" as="xs:integer" select="0"/>
    <xsl:variable name="bar_width" as="xs:integer" select="50"/>
    <xsl:variable name="bar_spacing" as="xs:integer" select="40"/>
    <xsl:variable name="color" select="'red'"/>
    <xsl:variable name="multiplier" select="600"/>
    
    <xsl:template match="/">
        <svg height="1500" width="1500" viewBox="-100, -650, 1500, 1500">
            <line x1="{$x1}" x2="{$x1}" y1="{$y1}" y2="{$y2}" stroke="black" stroke-linecap="square"/>
            <line x1="{$x1}" x2="{$x2}" y1="{$y2}" y2="{$y2}" stroke="black" stroke-linecap="square"/>
            <text x="{$x2 div 2}" y="-560" stroke="black" font-size="large" font-weight="bold" text-anchor="middle">
                References of Economy (1897-2021)
            </text>
            <xsl:for-each select="1 to 8">
                <line x1="{$x1}" x2="{$x2}" y1="-{(. * 60)}" y2="-{(. * 60)}" stroke="grey" stroke-linecap="square" stroke-dasharray="10,10"/>
                <text x="-25" y="-{(. * 60) - 5}" stroke="black">
                    <xsl:value-of select="(. * 0.1)"/>
                </text>
            </xsl:for-each>
            <text x="-60" y="-265" text-anchor="middle" font-weight="bold" font-size="large" stroke="black" writing-mode="tb">Percentage</text>
            <text x="620" y="60" text-anchor="middle" font-weight="bold" font-size="large" stroke="black">Years</text>
            <circle r="2" cx="40" cy="-{count(doc('../data/Republican_Presidents/mckinley_2_tai.xml')//economy) div count(doc('../data/Republican_Presidents/mckinley_2_tai.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="40" x2="80" y1="-{count(doc('../data/Republican_Presidents/mckinley_2_tai.xml')//economy) div count(doc('../data/Republican_Presidents/mckinley_2_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/t_roosevelt_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/t_roosevelt_2_jack.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="40" y="25" stroke="black" text-anchor="middle" font-size="15px">1897</text>
            <circle r="2" cx="80" cy="-{count(doc('../data/Republican_Presidents/t_roosevelt_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/t_roosevelt_2_jack.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="80" x2="120" y1="-{count(doc('../data/Republican_Presidents/t_roosevelt_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/t_roosevelt_2_jack.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/taft_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/taft_1_tai.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="80" y="25" stroke="black" text-anchor="middle" font-size="15px">1905</text>
            <circle r="2" cx="120" cy="-{count(doc('../data/Republican_Presidents/taft_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/taft_1_tai.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="120" x2="160" y1="-{count(doc('../data/Republican_Presidents/taft_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/taft_1_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/wilson_1_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/wilson_1_preetam.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="120" y="25" stroke="black" text-anchor="middle" font-size="15px">1909</text>
            <circle r="2" cx="160" cy="-{count(doc('../data/Democrat_Presidents/wilson_1_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/wilson_1_preetam.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="160" x2="200" y1="-{count(doc('../data/Democrat_Presidents/wilson_1_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/wilson_1_preetam.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/w_wilson_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/w_wilson_2_jack.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="160" y="25" stroke="black" text-anchor="middle" font-size="15px">1913</text>
            <circle r="2" cx="200" cy="-{count(doc('../data/Democrat_Presidents/w_wilson_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/w_wilson_2_jack.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="200" x2="240" y1="-{count(doc('../data/Democrat_Presidents/w_wilson_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/w_wilson_2_jack.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/harding_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/harding_1_tai.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="200" y="25" stroke="black" text-anchor="middle" font-size="15px">1917</text>
            <circle r="2" cx="240" cy="-{count(doc('../data/Republican_Presidents/harding_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/harding_1_tai.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="240" x2="280" y1="-{count(doc('../data/Republican_Presidents/harding_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/harding_1_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/coolidge_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/coolidge_2_jack.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="240" y="25" stroke="black" text-anchor="middle" font-size="15px">1921</text>
            <circle r="2" cx="280" cy="-{count(doc('../data/Republican_Presidents/coolidge_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/coolidge_2_jack.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="280" x2="320" y1="-{count(doc('../data/Republican_Presidents/coolidge_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/coolidge_2_jack.xml')//paragraph)* $multiplier}" y2="-{count(doc('../data/Republican_Presidents/hoover_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/hoover_1_tai.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="280" y="25" stroke="black" text-anchor="middle" font-size="15px">1925</text>
            <circle r="2" cx="320" cy="-{count(doc('../data/Republican_Presidents/hoover_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/hoover_1_tai.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="320" x2="360" y1="-{count(doc('../data/Republican_Presidents/hoover_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/hoover_1_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/f_roosevelt_1_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_1_preetam.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="320" y="25" stroke="black" text-anchor="middle" font-size="15px">1929</text>
            <circle r="2" cx="360" cy="-{count(doc('../data/Democrat_Presidents/f_roosevelt_1_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_1_preetam.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="360" x2="400" y1="-{count(doc('../data/Democrat_Presidents/f_roosevelt_1_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_1_preetam.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/f_roosevelt_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_2_jack.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="360" y="25" stroke="black" text-anchor="middle" font-size="15px">1933</text>
            <circle r="2" cx="400" cy="-{count(doc('../data/Democrat_Presidents/f_roosevelt_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_2_jack.xml')//paragraph)* $multiplier}" fill="{$color}"/>
            <line x1="400" x2="440" y1="-{count(doc('../data/Democrat_Presidents/f_roosevelt_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_2_jack.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/f_roosevelt_3_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_3_tai.xml')//paragraph) * $multiplier}" stroke="black"/> 
            <text x="400" y="25" stroke="black" text-anchor="middle" font-size="15px">1937</text>            
            <circle r="2" cx="440" cy="-{count(doc('../data/Democrat_Presidents/f_roosevelt_3_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_3_tai.xml')//paragraph)* $multiplier}" fill="{$color}"/>
            <line x1="440" x2="480" y1="-{count(doc('../data/Democrat_Presidents/f_roosevelt_3_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_3_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/f_roosevelt_4_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_4_preetam.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="440" y="25" stroke="black" text-anchor="middle" font-size="15px">1941</text>
            <circle r="2" cx="480" cy="-{count(doc('../data/Democrat_Presidents/f_roosevelt_4_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_4_preetam.xml')//paragraph) * $multiplier}" fill="{$color}"/>  
            <line x1="480" x2="520" y1="-{count(doc('../data/Democrat_Presidents/f_roosevelt_4_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/f_roosevelt_4_preetam.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/truman_2_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/truman_2_tai.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="480" y="25" stroke="black" text-anchor="middle" font-size="15px">1945</text>
            <circle r="2" cx="520" cy="-{count(doc('../data/Democrat_Presidents/truman_2_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/truman_2_tai.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="520" x2="560" y1="-{count(doc('../data/Democrat_Presidents/truman_2_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/truman_2_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/eisenhower_1_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/eisenhower_1_preetam.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="520" y="25" stroke="black" text-anchor="middle" font-size="15px">1949</text>
            <circle r="2" cx="560" cy="-{count(doc('../data/Republican_Presidents/eisenhower_1_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/eisenhower_1_preetam.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="560" x2="600" y1="-{count(doc('../data/Republican_Presidents/eisenhower_1_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/eisenhower_1_preetam.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/d_eisenhower_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/d_eisenhower_2_jack.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="560" y="25" stroke="black" text-anchor="middle" font-size="15px">1953</text>
            <circle r="2" cx="600" cy="-{count(doc('../data/Republican_Presidents/d_eisenhower_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/d_eisenhower_2_jack.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="600" x2="640" y1="-{count(doc('../data/Republican_Presidents/d_eisenhower_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/d_eisenhower_2_jack.xml')//paragraph)* $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/kennedy_1_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/kennedy_1_tai.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="600" y="25" stroke="black" text-anchor="middle" font-size="15px">1957</text>
            <circle r="2" cx="640" cy="-{count(doc('../data/Democrat_Presidents/kennedy_1_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/kennedy_1_tai.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="640" x2="680" y1="-{count(doc('../data/Democrat_Presidents/kennedy_1_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/kennedy_1_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/l_johnson_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/l_johnson_2_jack.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="640" y="25" stroke="black" text-anchor="middle" font-size="15px">1961</text>
            <circle r="2" cx="680" cy="-{count(doc('../data/Democrat_Presidents/l_johnson_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/l_johnson_2_jack.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="680" x2="720" y1="-{count(doc('../data/Democrat_Presidents/l_johnson_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/l_johnson_2_jack.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/nixon_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/nixon_1_tai.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="680" y="25" stroke="black" text-anchor="middle" font-size="15px">1965</text>
            <circle r="2" cx="720" cy="-{count(doc('../data/Republican_Presidents/nixon_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/nixon_1_tai.xml')//paragraph)* $multiplier}" fill="{$color}"/>
            <line x1="720" x2="760" y1="-{count(doc('../data/Republican_Presidents/nixon_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/nixon_1_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/nixon_2_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/nixon_2_preetam.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="720" y="25" stroke="black" text-anchor="middle" font-size="15px">1969</text>
            <circle r="2" cx="760" cy="-{count(doc('../data/Republican_Presidents/nixon_2_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/nixon_2_preetam.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="760" x2="800" y1="-{count(doc('../data/Republican_Presidents/nixon_2_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/nixon_2_preetam.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/carter_1_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/carter_1_tai.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="760" y="25" stroke="black" text-anchor="middle" font-size="15px">1973</text>
            <circle r="2" cx="800" cy="-{count(doc('../data/Democrat_Presidents/carter_1_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/carter_1_tai.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="800" x2="840" y1="-{count(doc('../data/Democrat_Presidents/carter_1_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/carter_1_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/reagan_1_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/reagan_1_preetam.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="800" y="25" stroke="black" text-anchor="middle" font-size="15px">1977</text>
            <circle r="2" cx="840" cy="-{count(doc('../data/Republican_Presidents/reagan_1_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/reagan_1_preetam.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="840" x2="880" y1="-{count(doc('../data/Republican_Presidents/reagan_1_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/reagan_1_preetam.xml')//paragraph)* $multiplier}" y2="-{count(doc('../data/Republican_Presidents/r_reagan_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/r_reagan_2_jack.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="840" y="25" stroke="black" text-anchor="middle" font-size="15px">1981</text>
            <circle r="2" cx="880" cy="-{count(doc('../data/Republican_Presidents/r_reagan_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/r_reagan_2_jack.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="880" x2="920" y1="-{count(doc('../data/Republican_Presidents/r_reagan_2_jack.xml')//economy) div count(doc('../data/Republican_Presidents/r_reagan_2_jack.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/hwbush_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/hwbush_1_tai.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="880" y="25" stroke="black" text-anchor="middle" font-size="15px">1985</text>
            <circle r="2" cx="920" cy="-{count(doc('../data/Republican_Presidents/hwbush_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/hwbush_1_tai.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="920" x2="960" y1="-{count(doc('../data/Republican_Presidents/hwbush_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/hwbush_1_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/clinton_1_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/clinton_1_preetam.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="920" y="25" stroke="black" text-anchor="middle" font-size="15px">1989</text>
            <circle r="2" cx="960" cy="-{count(doc('../data/Democrat_Presidents/clinton_1_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/clinton_1_preetam.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="960" x2="1000" y1="-{count(doc('../data/Democrat_Presidents/clinton_1_preetam.xml')//economy) div count(doc('../data/Democrat_Presidents/clinton_1_preetam.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/b_clinton_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/b_clinton_2_jack.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="960" y="25" stroke="black" text-anchor="middle" font-size="15px">1993</text>
            <circle r="2" cx="1000" cy="-{count(doc('../data/Democrat_Presidents/b_clinton_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/b_clinton_2_jack.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="1000" x2="1040" y1="-{count(doc('../data/Democrat_Presidents/b_clinton_2_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/b_clinton_2_jack.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/bush_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/bush_1_tai.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="1000" y="25" stroke="black" text-anchor="middle" font-size="15px">1997</text>
            <circle r="2" cx="1040" cy="-{count(doc('../data/Republican_Presidents/bush_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/bush_1_tai.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="1040" x2="1080" y1="-{count(doc('../data/Republican_Presidents/bush_1_tai.xml')//economy) div count(doc('../data/Republican_Presidents/bush_1_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/bush_2_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/bush_2_preetam.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="1040" y="25" stroke="black" text-anchor="middle" font-size="15px">2001</text>
            <circle r="2" cx="1080" cy="-{count(doc('../data/Republican_Presidents/bush_2_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/bush_2_preetam.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="1080" x2="1120" y1="-{count(doc('../data/Republican_Presidents/bush_2_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/bush_2_preetam.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/b_obama_1_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/b_obama_1_jack.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="1080" y="25" stroke="black" text-anchor="middle" font-size="15px">2005</text>
            <circle r="2" cx="1120" cy="-{count(doc('../data/Democrat_Presidents/b_obama_1_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/b_obama_1_jack.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="1120" x2="1160" y1="-{count(doc('../data/Democrat_Presidents/b_obama_1_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/b_obama_1_jack.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/obama_2_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/obama_2_tai.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="1120" y="25" stroke="black" text-anchor="middle" font-size="15px">2009</text>
            <circle r="2" cx="1160" cy="-{count(doc('../data/Democrat_Presidents/obama_2_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/obama_2_tai.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="1160" x2="1200" y1="-{count(doc('../data/Democrat_Presidents/obama_2_tai.xml')//economy) div count(doc('../data/Democrat_Presidents/obama_2_tai.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Republican_Presidents/trump_1_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/trump_1_preetam.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="1160" y="25" stroke="black" text-anchor="middle" font-size="15px">2013</text>
            <circle r="2" cx="1200" cy="-{count(doc('../data/Republican_Presidents/trump_1_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/trump_1_preetam.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <line x1="1200" x2="1240" y1="-{count(doc('../data/Republican_Presidents/trump_1_preetam.xml')//economy) div count(doc('../data/Republican_Presidents/trump_1_preetam.xml')//paragraph) * $multiplier}" y2="-{count(doc('../data/Democrat_Presidents/j_biden_1_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/j_biden_1_jack.xml')//paragraph) * $multiplier}" stroke="black"/>
            <text x="1200" y="25" stroke="black" text-anchor="middle" font-size="15px">2017</text>
            <circle r="2" cx="1240" cy="-{count(doc('../data/Democrat_Presidents/j_biden_1_jack.xml')//economy) div count(doc('../data/Democrat_Presidents/j_biden_1_jack.xml')//paragraph) * $multiplier}" fill="{$color}"/>
            <text x="1240" y="25" stroke="black" text-anchor="middle" font-size="15px">2021</text>
        </svg>
    </xsl:template>    
</xsl:stylesheet>