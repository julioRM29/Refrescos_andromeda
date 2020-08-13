<%-- 
    Document   : registro
    Created on : 11/08/2020, 09:46:51 PM
    Author     : oroch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Registro</title>
	<meta charset="utf-8">
</head>
<link rel="stylesheet" href="estilo_renta.css">

<body>
	<div class="contenedor">
            <form class="form" method="post" action="srvInsert">
			<div class="form-header">
				<h1 class="form-title">Registro de<span> usuario</span></h1>
                                
			</div>

			<label for="nombre" class="for-label">Nombre:</label>
			<input type="text" id="nombre" name="nombre" class="form-input" placeholder="Escriba su nombre">
                        
			<label for="apellido_paterno" class="for-label">Apellido Paterno:</label>
			<input type="text" id="apellido_paterno" name="apellido_paterno" class="form-input" placeholder="Escriba su apellido paterno">
                        
                        <label for="apellido_materno" class="for-label">Apellido Materno:</label>
			<input type="text" id="apellido_materno" name="apellido_materno" class="form-input" placeholder="Escriba su apellido materno">
                        
                        <label for="direccion" class="for-label">Dirección:</label>
			<input type="text" id="direccion" name="direccion" class="form-input" placeholder="Escriba su direccion">
                        
                        <label for="telefono" class="for-label">Telefono:</label>
			<input type="text" id="telefono" name="telefono" class="form-input" placeholder="Escriba su telefono">

			<label for="nombre_usuario" class="for-label">Nombres de usuario:</label>
			<input type="text" id="nombre_usuario" name="nombre_usuario" class="form-input" placeholder="Escriba su nombre de usuario">

			<label for="contraseña" class="for-label">Contraseña:</label>
                        <input type="text" id="contraseña" name="contraseña" class="form-input" placeholder="Escriba su contraseña">

                        <input type="submit" name="save" value="Guardar" class="btn-submit">

                        <br><br>
                        <a href="index.jsp">
                        <input type="button" name="guarda" value="Menu" class="btn-submit">
                    </a>

		</form>
		
	</div>

</body>
</html>