
package datos;

import java.sql.*;
import java.util.LinkedList;

public class ConexionBD {
    Connection conexion = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
   public Connection conectar(){
       try{
           Class.forName("org.postgresql.Driver");
           conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/refrescos","postgres","andromeda");
           System.out.println("Conectado!!");
       }catch(Exception ex){
           System.out.println("ERRO: "+ ex.getMessage());
   }
    return conexion;
}
   
   public LinkedList<Registro>consultaCliente(String conSQL){
       LinkedList <Registro> lRegis = new LinkedList <Registro>();
       try{
       ps = conectar().prepareStatement(conSQL);
       rs = ps.executeQuery();
       
       while(rs.next()){
           Registro reg = new Registro();
           reg.setNombre(rs.getString("nombre"));
           reg.setApellido_paterno(rs.getString("apellido_paterno"));
           reg.setApellido_materno(rs.getString("apellido_materno"));
           reg.setDireccion(rs.getString("direccion"));
           reg.setTelefono(rs.getString("telefono"));
           reg.setNombre_usuario(rs.getString("nombre_usuario"));
           reg.setContraseña(rs.getString("contraseña"));
           lRegis.add(reg);
       }
       
       ps.close();
       rs.close();
       
       }catch(Exception ex){
           System.out.println("ERROR"+ex.getMessage());
       }
       return lRegis;
   }
   
   public void insert(String insSQL){
       try{
           
           ps = conectar().prepareStatement(insSQL);
           ps.executeUpdate();
           
       }catch(Exception ex){
           System.out.println("ERROR"+ex.getMessage());
       }
   }
   
   
   public String obtenerUltimo(String conSQL, String campo) throws SQLException{
      String datos = ""; 
       ps = conectar().prepareStatement(conSQL);
       rs = ps.executeQuery();
       while(rs.next()){
           datos = rs.getString(campo);
       }
       
       return datos;
   }
           
   

   /*public static void main(String args[]) throws SQLException{
    ConexionBD con = new ConexionBD();
    System.out.println(""+con.obtenerUltimo("select id_registro from registros order by id_registro asc;", "id_registro"));
}*/
}

