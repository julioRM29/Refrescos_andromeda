
package datos;

import java.sql.*;
import java.util.LinkedList;

public class ConexionBDD {
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
   
   public LinkedList<Puntos>consultaPuntos(String conSQLL){
       LinkedList <Puntos> lRegis = new LinkedList <Puntos>();
       try{
       ps = conectar().prepareStatement(conSQLL);
       rs = ps.executeQuery();
       
       while(rs.next()){
           Puntos pun = new Puntos();
           pun.setCodigo_producto(rs.getString("codigo_producto"));
           pun.setPuntos(rs.getString("puntos"));
           pun.setNombre_usuario(rs.getString("nombre_usuario"));
           lRegis.add(pun);
       }
       
       ps.close();
       rs.close();
       
       }catch(Exception ex){
           System.out.println("ERROR"+ex.getMessage());
       }
       return lRegis;
   }
   
   public void insertt(String insSQLL){
       try{
           
           ps = conectar().prepareStatement(insSQLL);
           ps.executeUpdate();
           
       }catch(Exception ex){
           System.out.println("ERROR"+ex.getMessage());
       }
   }
   
   
   public String obtenerUltimoo(String conSQLL, String campoo) throws SQLException{
      String datos = ""; 
       ps = conectar().prepareStatement(conSQLL);
       rs = ps.executeQuery();
       while(rs.next()){
           datos = rs.getString(campoo);
       }
       
       return datos;
   }
           
   

  /* public static void main(String args[]) throws SQLException{
    ConexionBDD conn = new ConexionBDD();
    System.out.println(""+conn.obtenerUltimoo("select id_codigo from registro_codigo order by id_codigo asc;", "id_codigo"));
}*/
}


