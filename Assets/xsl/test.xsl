<?xml version="1.0"?>
<!--
	xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" 
	xmlns:asp="http://schemas.microsoft.com/ASPNET/20" 
	xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" 
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" 
	xmlns:SharePoint="Microsoft.SharePoint.WebControls" 
	xmlns:ddwrt2="urn:frontpage:internal"

	xmlns:ddw1="http://schemas.microsoft.com/sharepoint/soap/" 
	xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" 
	xmlns:rs="urn:schemas-microsoft-com:rowset" 
-->

<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:z="#RowsetSchema" version="1.0" exclude-result-prefixes="xsl msxsl ddwrt z" 
>
<xsl:output method="html" version="4.0"
encoding="iso-8859-1" indent="yes"/>

<xsl:template match="/">
 	<div>
    <h2>CG's Training Highlights</h2>
    <table>
      <tr>
        <th>Unit</th>
        <th>Event</th>
      </tr>
      <xsl:for-each select="//z:row">
        <tr>
          <xsl:call-template name="Unit">
          	<xsl:with-param name="DRU" select="@ows_DRU" />
          </xsl:call-template>
          <td><xsl:value-of select="@ows_Title"/></td>
        </tr>
      </xsl:for-each>
    </table>
   </div>
</xsl:template>

<xsl:template name="Unit">
	<xsl:param name="DRU" />
	<td>
		<xsl:attribute name="id">
    		<xsl:value-of select="concat('DRU.',substring-before($DRU,';'))" />
  		</xsl:attribute>
		<xsl:value-of select="substring-after($DRU,'#')" />
	</td>
</xsl:template>

</xsl:stylesheet>
