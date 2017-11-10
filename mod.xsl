<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.renqiyan">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-renqiyan" ox-mod="renqiyan">
            <h3 class="title">
                <img src="https://a.oxm1.cc/img/blank.png"/>人气眼
            </h3>
            <div class="top" style="background-image:url({data/cooltitle/bgpic})">
            	<img src="{data/cooltitle/icon}" height="20"/>
            	<xsl:value-of select="data/cooltitle/title"/>
            	
            </div>
            <div class="realtime">
            	<xsl:for-each select="data/realtime-hot/i">
            		<span class="realtimeindex">
            			<b class="index">
            				此刻人气
            				<hr/>
            				<big><xsl:value-of select="index"/></big>
            			</b>
            			<img src="https://a.oxm1.cc/img/blank.png" style="background-image:url({img})"/>
            			<nobr>
            				<xsl:value-of select="title"/>
            			</nobr>
            		</span>
            	</xsl:for-each>
            </div>
            <div class="bottom">
            	<xsl:for-each select="data/renqibang/i[position() &lt; 3]">
            		<a href="{href}" class="renqibang">
            			<b class="bang">
            				<img src="https://a.oxm1.cc/img/blank.png" style="background-image:url({icon})"/>
            				
            				<em><xsl:value-of select="title"/></em>
            				<br/>
            				<span><xsl:value-of select="subtitle"/></span>
            			</b>
            			<br/>
            			<nobr>
            				<em class="tag" style="background-color:{color}"><xsl:value-of select="tag"/></em>
            				<font color="{color}">&#160;<xsl:value-of select="shop"/></font>
            			</nobr>
            		</a>
            	</xsl:for-each>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
