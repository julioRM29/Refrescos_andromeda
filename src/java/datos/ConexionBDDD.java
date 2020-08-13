
package datos;

import java.sql.*;
import java.util.LinkedList;

public class ConexionBDDD {
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
   
   public LinkedList<Registro_premio>consultaRegistroPremio(String conSQLLL){
       LinkedList <Registro_premio> lRegisPre = new LinkedList <Registro_premio>();
       try{
       ps = conectar().prepareStatement(conSQLLL);
       rs = ps.executeQuery();
       
       while(rs.next()){
           Registro_premio RePre = new Registro_premio();
           RePre.setNombre_premio(rs.getString("nombre_premio"));
           RePre.setDescripcion(rs.getString("descripcion"));
           RePre.setPuntos(rs.getString("puntos"));
           lRegisPre.add(RePre);
       }
       
       ps.close();
       rs.close();
       
       }catch(Exception ex){
           System.out.println("ERROR"+ex.getMessage());
       }
       return lRegisPre;
   }
   
   public void inserttt(String insSQLLL){
       try{
           
           ps = conectar().prepareStatement(insSQLLL);
           ps.executeUpdate();
           
       }catch(Exception ex){
           System.out.println("ERROR"+ex.getMessage());
       }
   }
   
   
   public String obtenerUltimooo(String conSQLLL, String campooo) throws SQLException{
      String datos = ""; 
       ps = conectar().prepareStatement(conSQLLL);
       rs = ps.executeQuery();
       while(rs.next()){
           datos = rs.getString(campooo);
       }
       
       return datos;
   }
           
   

   /* public static void main(String args[]) throws SQLException{
    ConexionBDDD connn = new ConexionBDDD();
    System.out.println(""+connn.obtenerUltimooo("select id_registro_premio from registrar_premio order by id_registro_premio asc;", "id_registro_premio"));
}*/
}



