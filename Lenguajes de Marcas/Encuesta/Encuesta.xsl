<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
	version="2.0">
    <xsl:output method="html" doctype-public="html"/>

	<!-- Multiple -->

	<xsl:template match="/encuesta/cuestion">

		<html>
		    <head>
		        <link rel="StyleSheet" href="alumnos.css" type="text/css"/>
		        <title>Notas del curso: Curso xml</title>
		        <meta charset="utf-8"/>
		    </head>


			<body>


				<xsl:if test="@tipo = 'multiple'">

					<form>
					    <fieldset>

						<h1>
							<xsl:value-of select="pregunta" />
						</h1>

						<table>

							<xsl:for-each select="respuesta">

								<tr>
									<td>
										<input type="radio" name="gender" value="female" />
									</td>
									<td>
										<xsl:value-of select="." />
									</td>
								</tr>
							    
							    
							    <xsl:if test="@completar">
							        
							        <tr>
							            
							        </tr>
							        
							        <tr>							            
							            <td>
							                
							                    <textarea placeholder="Tu comentario" />
							            
							            </td>
							        </tr>
							        
							        
							    </xsl:if>
							    
							    
							    
							</xsl:for-each>

						</table>
					    </fieldset>
					</form>


				</xsl:if>



				<!-- Texto -->

				<xsl:if test="@tipo = 'texto'">

					<form>
					    <fieldset>
						<h1>
							<xsl:value-of select="pregunta" />
						</h1>

						<table>

							<xsl:for-each select="etiqueta">

								<tr>
									<td>
										<xsl:value-of select="." />
									</td>
									<td>
										<p>
											<textarea placeholder="Tu comentario" />
										</p>
									</td>
								</tr>
							</xsl:for-each>

						</table>
					        
					    </fieldset>
					    
					</form>


				</xsl:if>




				<!-- multiple2d -->

				<xsl:if test="@tipo = 'multiple2D'">

					<form>
					    <fieldset>

						<h1>
							<xsl:value-of select="pregunta" />
						</h1>

						<table>

							<xsl:for-each select="respuesta">

								<tr>

									<td>
										<input type="radio" name="gender" value="female" />
									</td>
								</tr>



								<tr>
								</tr>

								<xsl:for-each select="/encuesta/cuestion/respuesta" />
								<tr>
									<xsl:value-of select="." />
								</tr>

							</xsl:for-each>

						</table>
					    </fieldset>
					</form>


				</xsl:if>





































			</body>
		</html>
	</xsl:template>






</xsl:stylesheet>
