
package srvPremio;

import datos.ConexionBDDD;
import datos.ConexionBDDDD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author oroch
 */
public class srvPremios extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        ConexionBDDDD connnn = new ConexionBDDDD();
        
        if(request.getParameter("guarda")!=null) {
            int id_seleccion_premio = Integer.parseInt(connnn.obtenerUltimoooo("select id_seleccion_premio from seleccion_premios order by id_seleccion_premio asc;", "id_seleccion_premio"));  
            connnn.insertttt("insert into seleccion_premios values("+(id_seleccion_premio+1)+","+request.getParameter("id_usuario")+","+request.getParameter("id_registro_premio")+",'"+request.getParameter("nombre_premio")+"','"+request.getParameter("usuario")+"','"+request.getParameter("puntos")+"');");
            response.sendRedirect("menu.jsp?msg=Datos Guardados!!");
    }
             
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(srvPremios.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(srvPremios.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
