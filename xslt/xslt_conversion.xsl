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
                <div class="flex-container" id="js">
                    <ul>                 
                        <li><b>Unity</b><ul>
                            <li class="buttons"><input type="checkbox" id="unity-P" name="unityP"
                            />Positive<br/></li>
                            <li class="buttons"><input type="checkbox" id="unity-N" name="unityN"
                            />Negative<br/></li> </ul></li>                                    
                        <li><b>Economy</b><ul>                
                            <li class="buttons"><input type="checkbox" id="economy-P" name="economyP"
                            />Positive<br/></li>
                            <li class="buttons"><input type="checkbox" id="economy-N" name="economyN"
                            />Negative<br/></li>
                        </ul></li>                                  
                        <li><b>War</b><ul>
                            <li class="buttons"><input type="checkbox" id="war-P" name="warP"
                            />Positive<br/></li>
                            <li class="buttons"><input type="checkbox" id="war-N" name="warN"
                            />Negative<br/></li>  </ul></li>                                    
                        <li><b>Jobs</b><ul>
                            <li class="buttons"><input type="checkbox" id="jobs-P" name="jobsP"
                            />Positive<br/></li>
                            <li class="buttons"><input type="checkbox" id="jobs-N" name="jobsN"
                            />Negative<br/></li> </ul> </li>                                    
                        <li><b>Immigration</b><ul>
                            <li class="buttons"><input type="checkbox" id="immigration-P" name="immigrationP"
                            />Positive<br/></li>
                            <li class="buttons"><input type="checkbox" id="immigration-N" name="immigrationN"
                            />Negative<br/></li>  </ul></li>                                    
                        <li><b>Education</b><ul>
                            <li class="buttons"><input type="checkbox" id="education-P" name="educationP"
                            />Positive<br/></li>
                            <li class="buttons"><input type="checkbox" id="education-N" name="educationN"
                            />Negative<br/></li>  </ul></li>                                   
                        <li><b>Predecessor</b><ul>
                            <li class="buttons"><input type="checkbox" id="pred-P" name="predP"
                            />Positive<br/></li>
                            <li class="buttons"><input type="checkbox" id="pred-N" name="predN"
                            />Negative<br/></li>  </ul></li>                                  
                        <li><b>Criminal Justice</b><ul>
                            <li class="buttons"><input type="checkbox" id="criminal_justice-P" name="criminal_justiceP"
                            />Positive<br/></li>
                            <li class="buttons"><input type="checkbox" id="criminal_justice-N" name="criminal_justiceN"
                            />Negative<br/></li>   </ul></li>                 
                        <li><b>Public Health</b><ul>
                            <li class="buttons"><input type="checkbox" id="public_health-P" name="public_healthP"
                            />Positive<br/></li>
                            <li class="buttons"><input type="checkbox" id="public_health-N" name="public_healthN"
                            />Negative<br/></li> </ul> </li>                                    
                        <li class="buttons"><input type="checkbox" id="religion" name="religion"
                        /><b>Religion</b><br/></li>
                        <li class="buttons"><input type="checkbox" id="race" name="race"
                        /><b>Race</b><br/></li>
                        <li class="buttons"><input type="checkbox" id="infrastructure" name="infrastructure"
                        /><b>Infrastructure</b><br/></li>
                        <li class="buttons"><input type="checkbox" id="regulation" name="regulation"
                        /><b>Regulation</b><br/></li>
                        <li class="buttons"><input type="checkbox" id="trade" name="trade"
                        /><b>Trade</b><br/></li>
                        <li class="buttons"><input type="checkbox" id="congress" name="congress"
                        /><b>Congress</b><br/></li>
                        <li class="buttons"><input type="checkbox" id="diplomacy" name="diplomacy"
                        /><b>Diplomacy</b><br/></li>
                        <li class="buttons"><input type="checkbox" id="democracy" name="democracy"
                        /><b>Democracy</b><br/></li>
                        <li class="buttons"><input type="checkbox" id="tax" name="tax"
                        /><b>Tax</b><br/></li>                 
                    </ul>
                </div>
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
        <span class="religion">
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
        <span class="congress">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="tax">
        <span class="tax">
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