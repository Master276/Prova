<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes" />
	<!-- Berlino WeaGoo -->
	<!-- Starting template to generate all the other structures -->
<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>
	
	<!-- remove Le mappe offline when there is an iphone -->
	<xsl:template match="//object[title='Le Mappe Offline']">
	<xsl:if test="not(/userAccount/application/@exportType='iphone' or /userAccount/application/@exportType='appreview')">
		<xsl:copy>
			<xsl:apply-templates select="attribute::* | child::*" />
		</xsl:copy>
	</xsl:if>
	</xsl:template>
	
	<xsl:template match="categories/category[@key='root']/categories">
		<xsl:copy>
		<xsl:apply-templates select="attribute::*" />
		<!-- La Città -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjJZQw']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- Cosa Vedere -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw']">
			<xsl:copy>
			<xsl:attribute name="listtype">-1</xsl:attribute>
			<xsl:attribute name="stringlisttype">catlist</xsl:attribute>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='listtype')][not(name()='stringlisttype')][not(name()='parentKey')] | child::* [not(name()='objects')]" />
			<xsl:element name="categories">
			<!-- palazzi -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRinTgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- chiese -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjoFww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- vie -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRiZdQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- musei -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRiybQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- strutture -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjpFww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- monumenti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjqFww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- teatri -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRiBfQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- castelli -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjrFww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- parchi giardini -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjsFww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			<!-- divertimenti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRizbQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			<!-- campi da golf -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjnNgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			<!-- luoghi naturalistici -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjphAEM']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			
				<!-- luoghi storici -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjpgQIM']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRixbQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>



			</xsl:element>
			</xsl:copy>
		</xsl:for-each>



		<!-- Itinerari -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRiTLww']">
				<xsl:copy>
				<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>


		<!-- Cosa Fare -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjZJww']">
			<xsl:copy>
			<xsl:attribute name="listtype">-1</xsl:attribute>
			<xsl:attribute name="stringlisttype">catlist</xsl:attribute>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='listtype')][not(name()='stringlisttype')][not(name()='parentKey')] | child::* [not(name()='objects')]" />
			<xsl:element name="categories">

			<!-- eventi -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRiDfQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjZJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			<!-- mercatini -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjeTgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjZJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			<!-- periodo -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjGGAw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjZJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			<!-- bambini -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRiZ8gEM']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjZJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			
			</xsl:element>
			</xsl:copy>
		</xsl:for-each>



		<!-- Come Muoversi -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjaJww']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>

		<!-- Servizi geo-localizzati -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjHPgw']">
			<xsl:copy>
			<xsl:attribute name="listtype">-1</xsl:attribute>
			<xsl:attribute name="stringlisttype">catlist</xsl:attribute>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='listtype')][not(name()='stringlisttype')][not(name()='parentKey')] | child::* [not(name()='objects')]" />
			<xsl:element name="categories">
			<!-- Trasporti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjIPgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjHPgw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- ospedali -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjtFww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjHPgw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- caramba -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRiCfQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjHPgw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			<!-- minicipale -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRisRgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjHPgw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

<!-- fuoco -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRiadQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjHPgw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- Uffici info turistiche -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRirRgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjHPgw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
		
			</xsl:element>
			</xsl:copy>
		</xsl:for-each>

		<!-- Dove Mangiare -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRitRgw']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		

		<!-- Hotel con Booking -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRibdQw']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- Le altre guide di weagoo -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOzOXAwLEghDYXRlZ29yeRjKZQw']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
