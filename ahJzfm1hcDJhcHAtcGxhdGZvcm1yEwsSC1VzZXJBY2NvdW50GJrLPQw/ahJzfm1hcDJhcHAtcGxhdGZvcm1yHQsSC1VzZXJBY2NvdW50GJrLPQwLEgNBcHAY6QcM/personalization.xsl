<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes" />
	<!-- Madrid WeaGoo -->
	<!-- Starting template to generate all the other structures -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="categories/category[@key='root']/categories">
		<xsl:copy>
		<xsl:apply-templates select="attribute::*" />
		<!-- La Città -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjm8gEM']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- Cosa Vedere -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM']">
			<xsl:copy>
			<xsl:attribute name="listtype">-1</xsl:attribute>
			<xsl:attribute name="stringlisttype">catlist</xsl:attribute>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='listtype')][not(name()='stringlisttype')][not(name()='parentKey')] | child::* [not(name()='objects')]" />
			<xsl:element name="categories">
			<!-- palazzi -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihHww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- chiese -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRiJJww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- vie -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjCuwEM']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- musei -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjZNgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- strutture -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjBPgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- monumenti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRiSTgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- teatri -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjyLgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- parchi giardini -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjaNgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- parchi divertimenti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRipRgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- luoghi naturalistici -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjbNgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			
			<!-- trasporti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRj5VQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRihlgMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- altro -->
			
			<!-- attvita' -->
			</xsl:element>
			</xsl:copy>
		</xsl:for-each>
		<!-- Itinerari consigliati -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GIGtLQwLEghDYXRlZ29yeRj3qAIM']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- Cosa fare -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRj_2gEM']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- Come muoversi -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRipoQIM']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- Servizi geo-localizzati -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRj0pQMM']">
			<xsl:copy>
			<xsl:attribute name="listtype">-1</xsl:attribute>
			<xsl:attribute name="stringlisttype">catlist</xsl:attribute>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='listtype')][not(name()='stringlisttype')][not(name()='parentKey')] | child::* [not(name()='objects')]" />
			<xsl:element name="categories">
			<!-- Wi-fi / Hotspot -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRi6vQMM']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GIGtLQwLEghDYXRlZ29yeRjItQMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- Emergenze -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRia7AMM']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GIGtLQwLEghDYXRlZ29yeRjItQMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- Uffici informazioni turistiche -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjhXQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GIGtLQwLEghDYXRlZ29yeRjItQMM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			</xsl:element>
			</xsl:copy>
		</xsl:for-each>
		<!-- Dove mangiare -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjRgwQM']">
			<xsl:copy>
			<xsl:attribute name="listtype">-1</xsl:attribute>
			<xsl:attribute name="stringlisttype">catlist</xsl:attribute>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='listtype')][not(name()='stringlisttype')][not(name()='parentKey')] | child::* [not(name()='objects')]" />
			<xsl:element name="categories">
			<!-- Ristoranti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjK3AMM']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjRgwQM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			</xsl:element>
			</xsl:copy>
		</xsl:for-each>
		<!-- Hotel con Booking -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRjp_gIM']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- Le altre guide di weagoo -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GJrLPQwLEghDYXRlZ29yeRixoQIM']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		</xsl:copy>
	</xsl:template>
	
	
</xsl:stylesheet>
