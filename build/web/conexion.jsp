<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        
     
        %>

<% Connection conex=null;
Statement sql=null;
try{
    String url, user, contra;
        user="postgres";
        contra="andromeda";
        url="jdbc:postgresql://localhost:5432/refrescos";
    Class.forName("org.postgresql.Driver");
    conex=(Connection)DriverManager.getConnection(url,user,contra);
            sql=conex.createStatement();

 }catch (Exception e){
out.print("error de conexion "+e);
}
%>
