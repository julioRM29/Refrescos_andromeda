
package datos;

import java.sql.*;
import java.util.LinkedList;

public class ConexionBDDDD {
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
   
   public LinkedList<Premio>consultaPremio(String conSQLLLL){
       LinkedList <Premio> lPre = new LinkedList <Premio>();
       try{
       ps = conectar().prepareStatement(conSQLLLL);
       rs = ps.executeQuery();
       
       while(rs.next()){
           Premio pre = new Premio();
           pre.setId_usuario(rs.getString("id_usuario"));
           pre.setId_registro_premio(rs.getString("id_registro_premio"));
           pre.setId_codigo(rs.getString("id_codigo"));
           pre.setNombre_premio(rs.getString("nombre_premio"));
           pre.setUsuario(rs.getString("usuario"));
           pre.setPuntos(rs.getString("puntos"));
           lPre.add(pre);
       }
       
       ps.close();
       rs.close();
       
       }catch(Exception ex){
           System.out.println("ERROR"+ex.getMessage());
       }
       return lPre;
   }
   
   public void insertttt(String insSQLLLL){
       try{
           
           ps = conectar().prepareStatement(insSQLLLL);
           ps.executeUpdate();
           
       }catch(Exception ex){
           System.out.println("ERROR"+ex.getMessage());
       }
   }
   
   
   public String obtenerUltimoooo(String conSQLLLL, String campoooo) throws SQLException{
      String datos = ""; 
       ps = conectar().prepareStatement(conSQLLLL);
       rs = ps.executeQuery();
       while(rs.next()){
           datos = rs.getString(campoooo);
       }
       
       return datos;
   }
           
   

    /*public static void main(String args[]) throws SQLException{
    ConexionBDDDD connnn = new ConexionBDDDD();
    System.out.println(""+connnn.obtenerUltimoooo("select id_seleccion_premio from seleccion_premios order by id_seleccion_premio asc;", "id_seleccion_premio"));
}*/
}




