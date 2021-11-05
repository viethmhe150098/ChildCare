/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Manager;

import DAO.DAOService;
import Entity.SerCate;
import Entity.Service;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LOVE
 */
public class MServiceControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            DAOService dao = new DAOService();


            if (request.getParameter("type") != null) {
                int sid = Integer.parseInt(request.getParameter("sid"));
                int scID = Integer.parseInt(request.getParameter("scID"));
                dao.removeService(sid);

            }
            if (request.getParameter("type1") != null) {

             String name = request.getParameter("name");
             double price = Double.parseDouble(request.getParameter("price"));   
             String des = request.getParameter("description");
             int quan = Integer.parseInt(request.getParameter("quantity"));
             String img = request.getParameter("image");  
             String scid = request.getParameter("sercate");
             dao.addService(scid, name, price, des , quan , img);

            }
    
            

            List<Service> listS = dao.getAllProduct();
            List<SerCate> listC = dao.getAllCateSer();
            request.setAttribute("listS", listS);
            request.setAttribute("listC", listC);

            request.getRequestDispatcher("MService.jsp").forward(request, response);

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
        processRequest(request, response);
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
        processRequest(request, response);
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
