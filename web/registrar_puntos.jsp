<%-- 
    Document   : registrar_puntos
    Created on : 11/08/2020, 09:22:10 PM
    Author     : oroch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Registro de puntos</title>
	<meta charset="utf-8">
</head>
<link rel="stylesheet" href="estilo_renta.css">
<link rel="stylesheet" type="text/css" href="tabla.css">
<body>
	<div class="contenedor">
            <form class="form" method="post" action="srvPuntos">
			<div class="form-header">
				<h1 class="form-title">Registro de<span> puntos</span></h1>
                                
			</div>
			

			<label for="codigo_producto" class="for-label">Codigo del producto:</label>
			<input type="text" id="codigo_producto" name="codigo_producto" class="form-input" placeholder="Ingrese el codigo del producto">

			<label for="puntos" class="for-label">Puntos:</label>
			<input type="numeric" id="puntos" name="puntos" class="form-input" placeholder="Ingrese sus puntos">
                        
                        <label for="nombre_usuario" class="for-label">Nombres de usuario:</label>
			<input type="text" id="nombre_usuario" name="nombre_usuario" class="form-input" placeholder="Escriba su nombre de usuario">
		

			
                        <input type="submit" name="savee" value="Guardar" class="btn-submit">
                        <br><br>
                        <a href="menu.jsp">
                        <input type="button" name="guarda" value="Menu" class="btn-submit">
                    </a>

		</form>
		
	</div>

	<div id="main-container">
		<h1><center>Tabla de codigos</center></h1>

		<table border=0 width=1200 align="center">
        <thead>
           <tr height=100 colspan=3>
                <th>Bebidas</th><th>Puntos</th><th>Codigo</th>
            </tr>
            </thead>
            <tr height=100 colspan=3>
                <td  width=50 >
                     250 ml.
                </td>
                <td width=70>
                    20 
                </td>
                <td width=70>
                     C12345678
                </td>
                
            </tr>
            <tr height=100 colspan=3>
                <td  width=50 >
                     500 ml.
                </td>
                <td width=70>
                    50 
                </td>
                <td width=70>
                     M87654321
                </td>
                
            </tr>
            <tr height=100 colspan=3>
                <td  width=50 >
                     1 lt.
                </td>
                <td width=70>
                    100 
                </td>
                <td width=70>
                     G23456781
                </td>
                
            </tr>
             <tr height=100 colspan=3>
                <td  width=50 >
                     4 lt.
                </td>
                <td width=70>
                    300 
                </td>
                <td width=70>
                     E34567812
                </td>
                
            </tr>
        </table>
    </div>

</body>
</html>