<%-- 
    Document   : registrar_premio
    Created on : 11/08/2020, 09:14:48 PM
    Author     : oroch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Registro de premio</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0">
</head>
<link rel="stylesheet" href="estilo_renta.css">
<body>

	<div class="contenedor">
            <form class="form" method="post" action="srvRegistrarPremio">
			<div class="form-header">
				<h1 class="form-title">Registro de<span> premio</span></h1>
                                
			</div>

			<label for="nombre_premio" class="for-label">Nombres del premio:</label>
			<input type="text" id="nombre_premio" name="nombre_premio" class="form-input" placeholder="Escriba el nombre del premio">

                         <input type="text" id="descripcion" name="descripcion" class="form-input" placeholder="Escriba la descripcion del premio">

			<label for="puntos" class="for-label">Puntos del producto:</label>
			<input type="text" id="puntos" name="puntos" class="form-input" placeholder="Ingrese el numero de puntos que vale el premio">
                
                        <input type="submit" name="guardo" value="Guardar" class="btn-submit">

                        <br><br>
                        <a href="menu.jsp">
                        <input type="button" name="guardo" value="Menu" class="btn-submit">
                    </a>

		</form>
		
	</div>

</body>
</html>

