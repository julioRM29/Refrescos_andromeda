<%-- 
    Document   : canjear_premio
    Created on : 11/08/2020, 09:08:35 PM
    Author     : oroch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Canjear premios</title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script >
function Mymensaje() {
	alert("Su pedido sea guardado");
}

function Mymensaje2(){
	alert("Su pedido sea cancelado");
}
</script>
  
	<link rel="stylesheet" type="text/css" href="tabla.css">
	<link rel="stylesheet" href="estilo_renta.css">
</head>
<body>
<h1><center>Catalogo de productos</center></h1>
<div id="main-container">
		
		<table border=0 width=1200 align="center">
        <thead>
           <tr height=100 colspan=3>
                <th>Imagen</th><th>Nombre</th><th>Descripcion</th><th>Puntos</th><th>numero de producto</th>
            </tr>
            </thead>
            <tr height=100 colspan=3>
                <td  width=50 >
                     <img src="licuadora.jpg" class="imagen">
                </td>
                <td width=70>
                    Licuadora 
                </td>
                <td width=70>
                     Oster Core roja de 7 velocidades
                </td>
                <td width=70>
                     1300
                </td>
                <td width=70>
                     123456789
                </td>
            </tr>
               <tr height=100 colspan=3>
                <td  width=50 >
                     <img src="tostador.jpg" class="imagen">
                </td>
                <td width=70>
                    Tostador 
                </td>
                <td width=70>
                     Oster Gourmet Collection
                </td>
                <td width=70>
                     1000
                </td>
                <td width=70>
                     987654321
                </td>
            </tr>
            <tr height=100 colspan=3>
                <td  width=50 >
                     <img src="refri.jpg" class="imagen">
                </td>
                <td width=70>
                    Refrigerador 
                </td>
                <td width=70>
                     Hisense Una Puerta RR63D6WGX 7 Pies
                </td>
                <td width=70>
                     20000
                </td>
                <td width=70>
                     234567891
                </td>
            </tr>
            <tr height=100 colspan=3>
                <td  width=50 >
                     <img src="celular.jpg" class="imagen" height="300">
                </td>
                <td width=70>
                    Celular 
                </td>
                <td width=70>
                   
HUAWEI P20 Lite (32GB + 4 GB RAM) Pantalla FHD+ de 5,8", 4G LTE Dual SIM GSM desbloqueado de fábrica 
                </td>
                <td width=70>
                     17000
                </td>
                <td width=70>
                     345678912
                </td>
            </tr>
            <tr height=100 colspan=3>
                <td  width=50 >
                     <img src="play.jpg" class="imagen" height="170">
                </td>
                <td width=70>
                    Consola de videojuego 
                </td>
                <td width=70>
Sony PlayStation 4 Slim 1TB Standard jet black
                </td>
                <td width=70>
                     30000
                </td>
                <td width=70>
                     456789123
                </td>
            </tr>
        </table>
    </div>

    <div class="contenedor">
            <form class="form" method="post" action="srvPremios">
			<div class="form-header">
				<h1 class="form-title">Canje de<span> premios</span></h1>
                                
			</div>
			
                        <label for="id_usuario" class="for-label">id_usuario:</label>
			<input type="text" id="id_usuario" name="id_usuario" class="form-input" placeholder="Escriba su id de usuario">
                        
                        <label for="id_registro_premio" class="for-label">id_registro_premio:</label>
			<input type="text" id="id_registro_premio" name="id_registro_premio" class="form-input" placeholder="Escriba su id del premio">
                        
			<label for="nombre_premio" class="for-label">Nombre_premio:</label>
			<input type="text" id="nombre_premio" name="nombre_premio" class="form-input" placeholder="Escriba el nombre del premio">

                        <label for="usuario" class="for-label">Usuario:</label>
			<input type="text" id="usuario" name="usuario" class="form-input" placeholder="Ingrese su nombre de usuario">
		
                        
			<label for="puntos" class="for-label">Puntos:</label>
			<input type="numeric" id="puntos" name="puntos" class="form-input" placeholder="Ingrese sus puntos">

			

			
                        <input type="submit" name="guarda" value="Guardar" class="btn-submit">

                        <br><br>
                        <a href="menu.jsp">
                        <input type="button" name="guardas" value="Menu" class="btn-submit">
                    </a>

		</form>
		
	</div>
</body>
</html>
