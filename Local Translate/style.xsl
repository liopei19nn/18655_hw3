<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:variable name="className" select="/dependentObject/@class"/>
    <!--
    ********************************************************************
    ** Generate the class skeleton. Other templates will generate
    ** portions of the class.
    *****************************************************************-->
    <xsl:template match="/dependentObject">public class <xsl:value-of select="$className"/>
    <xsl:text>  { 
    </xsl:text>
    <xsl:text>
    /**
     * Private Field
     */
    </xsl:text>
    <xsl:apply-templates select="property" mode="generateField"/>	
    <xsl:apply-templates select="property" mode="generateGetter"/>
    <xsl:apply-templates select="property" mode="generateSetter"/>
}
    </xsl:template>

    <!--
    *****************************************************************
    ** Generate a private field declaration.
    **************************************************************-->
    <xsl:template match="property" mode="generateField">
    private <xsl:value-of select="@type"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="@name"/>;</xsl:template>
    
    <!--
    *****************************************************************
    ** Generate a "get" method for a property.
    **************************************************************-->
    <xsl:template match="property" mode="generateGetter">
    <xsl:text>
    /**
     * Getter of  </xsl:text> <xsl:value-of select="@name"/> <xsl:text>
     */
    </xsl:text>
    public <xsl:value-of select="@type"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="@getter"/>( ) {
        return this.<xsl:value-of select="@name"/>;
    }
    </xsl:template>


    <!--
    *****************************************************************
    ** Generate a "set" method for a property.
    **************************************************************-->
    <xsl:template match="property" mode="generateSetter">
    <xsl:text>
    /**
     * Setter of  </xsl:text> <xsl:value-of select="@name"/> <xsl:text>
     */
    </xsl:text>
    public void <xsl:text> </xsl:text> <xsl:value-of select="@setter"/><xsl:text>(</xsl:text>
    <xsl:value-of select="@type"/> <xsl:text> </xsl:text>  <xsl:value-of select="@name"/>) {
        this.<xsl:value-of select="@name"/> = <xsl:value-of select="@name"/>;
    }
    </xsl:template>
    
   
</xsl:stylesheet>