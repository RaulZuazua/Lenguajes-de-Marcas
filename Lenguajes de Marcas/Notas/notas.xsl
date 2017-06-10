<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/alumnos">
        
        <html>
            
            <head>
                <link rel="StyleSheet" href="notas.css" type="text/css"/>
                <title>Notas</title>
                <meta charset="utf-8"/>
            </head>
            
            <body>
                
                <h1>Notas Alumnos 1ºEvaluacion curso 2011-2012</h1>
                
                <div>
                    
                <table>
                    
                    <tr>
                        <th>Alumno</th>
                        <th>Nota media</th>
                        <th>Calificacion</th>
                        
                    </tr>
                    
                    
                    <xsl:for-each select="alumno">
                                                
                        <xsl:variable name="media" select="sum(nota) div count(nota)" as="xs:decimal"/>
                        
                        
                        <tr>
                            
                          <td><xsl:value-of select="nombre"/></td>  
                          <td><xsl:value-of select="$media"/></td> 
                            
                            <xsl:if test="$media &gt;9">
                                
                                
                                <td>Matricula de Honor</td>

                            </xsl:if>  
                            
                            
                            <xsl:if test="$media &lt;5">
                                
                                
                                <td>Suspenso</td>
                                
                            </xsl:if> 
                            
                            
                            <xsl:if test="$media &gt;5 and $media &lt;=6">
                                
                                
                                <td>Bien</td>
                                
                            </xsl:if> 
                            
                            
                            <xsl:if test="$media &gt;6 and $media &lt;9">
                                
                                
                                <td>Notable</td>
                                
                            </xsl:if> 
                                   
                            
                        </tr>
                        
                    </xsl:for-each>
                    
                    
                </table>
                
                </div>
                
            </body>
        </html>
             
        
    </xsl:template>
    
    
</xsl:stylesheet>