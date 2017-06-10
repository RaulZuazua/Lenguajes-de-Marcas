<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/breakfastmenu">
        
       <html>
           <head>
               <link rel="StyleSheet" href="desayuno.css" type="text/css"/>
               <title>Los desayunos de hoy</title>
               <meta charset="utf-8"/>
           </head>
           
           <body>
               
               <table border="1">
               <tr>
                   <th colspan="3">Los desayunos de hoy</th>
               </tr>
               
               
               
               <xsl:for-each select="food">
                   
               <tr>
                   
                   
                   <td><IMG SRC="tenedor.jpg" ALT="desayuno"/></td>   
                   <td>Puedes come <xsl:value-of select="description"/> por solo  <xsl:value-of select="price"/> ( y  <xsl:value-of select="calories"/> )</td>
                   <td>Elige: <xsl:value-of select="name"/></td>
                   
               </tr>
               
               </xsl:for-each>
               </table>
           </body>
           
       </html>
        
        
        
        
        
        
        
    </xsl:template>

</xsl:stylesheet>