<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Presidential Inaugural Speeches</title>
                <link rel="stylesheet" type="text/css" href="../../css/index_css.css"/> 
                <script type="text/javascript" src="../../js/presidents.js"/>
            </head>
            <body id="text">
                <xsl:comment>#include virtual="../includes/menu_text_active.xhtml" </xsl:comment>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="introduction">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    <xsl:template match="paragraph">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="unity">
        <span class="unity-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="jobs">
        <span class="jobs-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="war">
        <span class="war-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="economy">
        <span class="economy-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="religion">
        <span class="economy">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="democracy">
        <span class="democracy">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="immigration">
        <span class="immigration-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="race">
        <span class="race">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="education">
        <span class="education-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="public_health">
        <span class="public_health-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="pred">
        <span class="pred-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="criminal_justice">
        <span class="criminal_justice-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="congress">
        <span class="congress-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="tax">
        <span class="tax-{@tone}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="diplomacy">
        <span class="diplomacy">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="infrastructure">
        <span class="infrastructure">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="regulation">
        <span class="regulation">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="trade">
        <span class="trade">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
</xsl:stylesheet>