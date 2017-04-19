<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


  <xsl:template match="/">

    <html>
      <body>
        <p>
          <h1>Informace o hráči</h1>
          Přezdívka: <xsl:value-of select ="//profile/@nickname"/> <br/>
          Jméno: <xsl:value-of select ="//profile/firtname"/>       <br/>
          Příjmení: <xsl:value-of select ="//profile/lastname"/>     <br/>
          Věk: <xsl:value-of select ="//profile/age"/> <br/>
          Email: <xsl:value-of select ="//profile/email"/>  <br/>
        </p>

        <p>
          <h1>Výpis všech grafických elementů nastavených na hodnotu Hight nebo Ultra</h1>
          <xsl:for-each select="//graphics/*/*[.='High' or .='Ultra'] ">
            Element:  <xsl:value-of select ="name(.)"/>           <!--Jmeno elementu-->
            Hodnota: <xsl:value-of select ="."/>     <br/>        <!--Hodnota elementu-->
        </xsl:for-each>
    
        </p>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
