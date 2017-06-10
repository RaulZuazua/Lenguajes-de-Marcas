<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/escrutinio_sitio">
        
        <html>
            <head>
                <link rel="StyleSheet" href="Escrutinio.css" type="text/css"/>
                <title>Ecrutinio</title>
                <meta charset="utf-8"/>
            </head>
            
            
            <body>
                
                <img src="logo1.png" alt="Resultados del Ecrutinio de Cataluña" />
                
                <div>
                    <h1>Elecciones autonomicas 2012</h1>
                </div>
                 
                 
                <div>
                    <h2>Resultados del Ecrutinio de Cataluña</h2>
                </div>
                
                <table align="center">
                    
                    <tr>
                        <td>Escrutado: </td>
                        <td><xsl:value-of select="porciento_escrutado"/>%</td>
                        
                    </tr> 
                    
                    
                    <tr>
                        <td>Escaños totales: </td>
                        <td><xsl:value-of select="sum(resultados/partido/electos)"/></td>
                        
                    </tr>
                    
                    <tr>
                        <td>Votos contabilizados: </td>
                        <td><xsl:value-of select="votos/contabilizados/cantidad"/></td>
                        <td><xsl:value-of select="votos/contabilizados/porcentaje"/>%</td>
                        
                    </tr>
                    
                    
                    <tr>
                        <td>Abstenciones: </td>
                        <td><xsl:value-of select="votos/abstenciones/cantidad"/></td>
                        <td><xsl:value-of select="votos/abstenciones/porcentaje"/>%</td>
                        
                    </tr>
                    
                    <tr>
                        <td>Votos Nulos: </td>
                        <td><xsl:value-of select="votos/nulos/cantidad"/></td>
                        <td><xsl:value-of select="votos/nulos/porcentaje"/>%</td>
                        
                    </tr>
                    
                    
                    <tr>
                        <td>Votos en Blanco: </td>
                        <td><xsl:value-of select="votos/blancos/cantidad"/></td>
                        <td><xsl:value-of select="votos/blancos/porcentaje"/>%</td>
                        
                    </tr>
                    
                   
                </table>
                
                
                
                
                
                <h2>Ecrutinio por partidos en Cataluña</h2>
                
                
                <table align="center">
                    
                    
                    <tr>
                        <th>Partido</th>
                        <th>Escaños</th>
                        <th></th>
                        <th>Votos</th>
                        <th>Porcentaje</th>
                        
                    </tr>
                    
                    
                    <xsl:for-each select="resultados/partido">
                        
                        <tr>
                            
                        <td><xsl:value-of select="nombre"/></td>
                            
                            
                        <td>
                            <xsl:if test="electos &gt; 20">
                                <xsl:attribute name="class">masde20</xsl:attribute>
                            </xsl:if>
                            <xsl:if test="electos=0">
                                <xsl:attribute name="class">ninguno</xsl:attribute>
                            </xsl:if>
                                  
                            <xsl:value-of select="electos"/>  
                        </td>
                            
                            
                        <td><xsl:value-of select="electos"/></td>
                        <td><xsl:value-of select="votos_numero"/></td>
                        <td><xsl:value-of select="votos_porciento"/></td>
                        
                        </tr>
                        
                    </xsl:for-each>
                    

                </table>
                
                
                
                
                
            </body>
        </html>
        
        
        
        
        
    </xsl:template>
    
    
</xsl:stylesheet>