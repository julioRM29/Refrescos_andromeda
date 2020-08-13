<%-- 
    Document   : iniciar_sesion
    Created on : 11/08/2020, 09:12:44 PM
    Author     : oroch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title>Inicio de sesion</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0">
</head>
<link rel="stylesheet" href="estilo_renta.css">
<body>
<div class="contenedor">
            <form class="form" method="post" action="inicio.jsp" name="formulario">
			<div class="form-header">
				<h1 class="form-title">Inicio d<span>e sesion</span></h1>
                                
			</div>

			<label for="nombre_usuario" class="for-label">Nombres de usuario:</label>
			<input type="text" id="nombre_usuario" name="nombre_usuario" class="form-input" placeholder="Escriba su nombre de usuario">

			<label for="contra" class="for-label">Contraseña:</label>
                        <input type="password" id="contra" name="contra" class="form-input" placeholder="Escriba su contraseña">
                        <br>
                		
                        <input type="submit" value="Iniciar Sesión" class="btn-submit">
                    
		</form>
		
	</div>
</body>
</html>