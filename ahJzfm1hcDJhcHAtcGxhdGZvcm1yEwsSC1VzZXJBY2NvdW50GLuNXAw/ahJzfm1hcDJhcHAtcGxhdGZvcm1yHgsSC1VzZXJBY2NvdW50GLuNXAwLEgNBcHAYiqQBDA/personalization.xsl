<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes" />
	<!-- Vienna WeaGoo -->
	<!-- Starting template to generate all the other structures -->
<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>

	<!-- Configure shortName for submission on Android -->
	<xsl:template match="//application[1]/@shortName">
		<xsl:attribute name="shortName">Viennaunaguidautile</xsl:attribute>
	</xsl:template>

	<xsl:template match="categories/category[@key='root']/categories">
		<xsl:copy>
		<xsl:apply-templates select="attribute::*" />
		<!-- La Città -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRihHww']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- Cosa Vedere -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww']">
			<xsl:copy>
			<xsl:attribute name="listtype">-1</xsl:attribute>
			<xsl:attribute name="stringlisttype">catlist</xsl:attribute>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='listtype')][not(name()='stringlisttype')][not(name()='parentKey')] | child::* [not(name()='objects')]" />
			<xsl:element name="categories">
			<!-- palazzi -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjvDww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- chiese -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjhFww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- vie -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiqRgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- musei -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjwDww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- strutture -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjzLgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- monumenti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjiFww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- teatri -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiLJww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- castelli -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiRTgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- parchi giardini -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRj5VQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- parchi divertimenti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjaNgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			<!-- campi da golf -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjhXQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiKJww</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			</xsl:element>
			</xsl:copy>
		</xsl:for-each>
		
		<!-- Storie  -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjejAEM']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOLlVgwLEghDYXRlZ29yeRjJZQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			
		
		<!-- Itinerari -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjZNgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOLlVgwLEghDYXRlZ29yeRjJZQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
		
		<!-- Fuori porta -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjxLgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOLlVgwLEghDYXRlZ29yeRjJZQw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

		<!-- Cosa fare -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjBPgw']">
			<xsl:copy>
			<xsl:attribute name="listtype">-1</xsl:attribute>
			<xsl:attribute name="stringlisttype">catlist</xsl:attribute>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='listtype')][not(name()='stringlisttype')][not(name()='parentKey')] | child::* [not(name()='objects')]" />
			<xsl:element name="categories">
			<!-- Eventi e Festival -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjofQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjBPgw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>			
			<!-- Mercatini -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiZJww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjBPgw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			
		<!-- Natale -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjjNgw']">
			<xsl:copy>
			<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjBPgw</xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- shopping -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiDLww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjBPgw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
		<!-- Con i bambini -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjSZQw']">
			<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjBPgw</xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- relax e divertimenti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRijnAEM']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjBPgw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
		</xsl:element>
		</xsl:copy>
		</xsl:for-each>
		
		<!-- Come Muoversi -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiiHww']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		
		<!-- Servizi geo-localizzati -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjyLgw']">
			<xsl:copy>
			<xsl:attribute name="listtype">-1</xsl:attribute>
			<xsl:attribute name="stringlisttype">catlist</xsl:attribute>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='listtype')][not(name()='stringlisttype')][not(name()='parentKey')] | child::* [not(name()='objects')]" />
			<xsl:element name="categories">
			<!-- Trasporti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRi8fQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GOLlVgwLEghDYXRlZ29yeRioggIM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- ospedali -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRigGAw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GOLlVgwLEghDYXRlZ29yeRioggIM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- Polizia di Stato -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjDVgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GOLlVgwLEghDYXRlZ29yeRioggIM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			
			<!-- Vigili del fuoco -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiRLww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GOLlVgwLEghDYXRlZ29yeRioggIM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- Uffici info turistiche -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRicJww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GOLlVgwLEghDYXRlZ29yeRioggIM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- parcheggi -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRilhQEM']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIwsSC1VzZXJBY2NvdW50GOLlVgwLEghDYXRlZ29yeRioggIM</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			</xsl:element>
			</xsl:copy>
		</xsl:for-each>
		<!-- Dove Mangiare -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRipRgw']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>

		<!-- Dove Mangiare -Gluten free-->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRiTZgw']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>		
		
		<!-- Hotel con Booking -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRjgFww']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- Le altre guide di weagoo -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIQsSC1VzZXJBY2NvdW50GLuNXAwLEghDYXRlZ29yeRgMDA']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>