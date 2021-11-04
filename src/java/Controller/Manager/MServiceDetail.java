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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LOVE
 */
public class MServiceDetail extends HttpServlet {

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
            String sid = request.getParameter("sid");
        String scID = request.getParameter("scID");
        DAOService dao = new DAOService();
//        List<Service> items = dao.getServiceByCID(sid);
          if (request.getParameter("type") != null) {
             String name = request.getParameter("name");
             float price = Float.parseFloat(request.getParameter("price"));   
             String des = request.getParameter("description");
             int quan = Integer.parseInt(request.getParameter("quantity"));
             String img = request.getParameter("image");   
             dao.updateService(name, price, des, quan, img, Integer.parseInt(sid));
           
                
            }
        
        Service items1 = dao.getServiceByCID1(sid);
        SerCate items2 = dao.getSerCateByscID(scID);
//        request.setAttribute("Sdetail", items);
        request.setAttribute("Sdetail1", items1);
        request.setAttribute("Sdetail2", items2);
        request.getRequestDispatcher("MDetail.jsp").forward(request, response);
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
