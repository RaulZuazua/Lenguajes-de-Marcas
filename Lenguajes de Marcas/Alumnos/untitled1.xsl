<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/alumnos">
        
        
      <html>

          <head>
              <link rel="StyleSheet" href="alumnos.css" type="text/css"/>
              <title>Notas del curso: Curso xml</title>
              <meta charset="utf-8"/>
          </head>

          <body>
              
              <h1>Notas del curso: Curso xml</h1>
              
              <table>
                  
                  <tr>
                      
                      <th>DNI</th>
                      <th>Alumno</th>
                      <th>Email</th>
                      <th>Nota</th>

                  </tr>
                  
                  <xsl:for-each select="alumno">
                  
                  <tr>
                      
                      <td><xsl:value-of select="@dni"/></td>
                      <td><xsl:value-of select="apellidos"/> , <xsl:value-of select="nombre"/></td>
                      <td><xsl:value-of select="email"/></td>
                      
                      
                      <td>
                          <xsl:if test="nota/text() &lt; 5">
                             <xsl:attribute name="class" select="'suspenso'"></xsl:attribute>
                          </xsl:if>
                          <xsl:value-of select="nota"/>
                      </td>
                    

                  </tr>

                </xsl:for-each>
              
              </table>

          </body>
          
      </html>
        
        
        
        
        
        
        
        
        
    </xsl:template>    

</xsl:stylesheet>