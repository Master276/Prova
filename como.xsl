<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes" />
  <!-- Falkensteiner WeaGoo -->
  <!-- Starting template to generate all the other structures -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>

	<!-- Configure shortName for submission on Android -->
	<xsl:template match="//application[1]/@shortName">
		<xsl:attribute name="shortName">Falkensteiner</xsl:attribute>
	</xsl:template>

	<!-- fix problem with logo in the application -->
	<xsl:template match="//application[1]/logo/full/@shortName">
		<xsl:attribute name="shortName">ftOP9raKwVgdo6tEHbwfRpCRYM4ULUwNjYK6LixF1lDTI3q2L3BJJxA2ZtFxa1aK1VsL--vrRIE7yGqbwRunZ9NBNDZ_ag</xsl:attribute>
	</xsl:template>
	<xsl:template match="//application[1]/logo/full"><xsl:copy><xsl:apply-templates select="attribute::*" />http://lh3.ggpht.com/ftOP9raKwVgdo6tEHbwfRpCRYM4ULUwNjYK6LixF1lDTI3q2L3BJJxA2ZtFxa1aK1VsL--vrRIE7yGqbwRunZ9NBNDZ_ag</xsl:copy>
	</xsl:template>

	<!-- fix problem with logo in one object -->
	<xsl:template match="//object[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yMAsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRikfQwLEgdDb250ZW50GLwQDA']/icon">
		<icon type="image">
			<full extension="png" contentType="image/png" source="blobstore" 
			shortName="ftOP9raKwVgdo6tEHbwfRpCRYM4ULUwNjYK6LixF1lDTI3q2L3BJJxA2ZtFxa1aK1VsL--vrRIE7yGqbwRunZ9NBNDZ_ag">http://lh3.ggpht.com/ftOP9raKwVgdo6tEHbwfRpCRYM4ULUwNjYK6LixF1lDTI3q2L3BJJxA2ZtFxa1aK1VsL--vrRIE7yGqbwRunZ9NBNDZ_ag</full>
			<square extension="png" contentType="image/png" source="blobstore" 
			shortName="ftOP9raKwVgdo6tEHbwfRpCRYM4ULUwNjYK6LixF1lDTI3q2L3BJJxA2ZtFxa1aK1VsL--vrRIE7yGqbwRunZ9NBNDZ_ag">http://lh3.ggpht.com/ftOP9raKwVgdo6tEHbwfRpCRYM4ULUwNjYK6LixF1lDTI3q2L3BJJxA2ZtFxa1aK1VsL--vrRIE7yGqbwRunZ9NBNDZ_ag</square>
		</icon>
	</xsl:template>

	<xsl:template match="categories/category[@key='root']/categories">
		<xsl:copy>
		<xsl:apply-templates select="attribute::*" />
		<!-- Il Gruppo -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOTFXAwLEghDYXRlZ29yeRjpBww']">
			<xsl:copy>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
			</xsl:copy>
		</xsl:for-each>
		<!-- Austria -->
		<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GOTFXAwLEghDYXRlZ29yeRjRDww']">
			<xsl:copy>
			<xsl:attribute name="listtype">-1</xsl:attribute>
			<xsl:attribute name="stringlisttype">catlist</xsl:attribute>
			<xsl:attribute name="parentKey"><xsl:value-of select="../../@key"/></xsl:attribute>
			<xsl:apply-templates select="attribute::* [not(name()='listtype')][not(name()='stringlisttype')][not(name()='parentKey')] | child::* [not(name()='objects')]" />
			<xsl:element name="categories">
			<!-- palazzi -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRjpBww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- chiese -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIQsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRgMDA']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- vie -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipRgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- musei -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRihHww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- strutture -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRjxLgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- monumenti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRjxDww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- teatri -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRjBPgw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			<!-- parchi giardini -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRjiXQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- parchi divertimenti -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRjzFww']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			<!-- campi da golf -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRj6VQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- luoghi naturalistici -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRjhXQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>
			<!-- luoghi storici -->
			<xsl:for-each select="//category[@key='ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRj5VQw']">
				<xsl:copy>
				<xsl:attribute name="parentKey">ahJzfm1hcDJhcHAtcGxhdGZvcm1yIgsSC1VzZXJBY2NvdW50GPXeYAwLEghDYXRlZ29yeRipGAw</xsl:attribute>
				<xsl:apply-templates select="attribute::* [not(name()='parentKey')] | child::* " />
				</xsl:copy>
			</xsl:for-each>

			</xsl:element>
			</xsl:copy>
		</xsl:for-each>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
