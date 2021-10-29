/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Manager;

import DAO.DAOMedicine;
import Entity.Medicines;
import Model.DBConnect;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


/**
 *
 * @author Viet
 */
@WebServlet(name = "Medicine", urlPatterns = {"/Medicine"})
public class Medicine extends HttpServlet {

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
        DBConnect dbconn = new DBConnect();
        DAOMedicine dao = new DAOMedicine(dbconn);
        String service = request.getParameter("service");
        if (service == null) {
            ArrayList<Medicines> list = dao.displayMe();
            request.setAttribute("list", list);
            request.getRequestDispatcher("displayMedicine.jsp").forward(request, response);
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

        DBConnect dbconn = new DBConnect();
        DAOMedicine dao = new DAOMedicine(dbconn);
        String service = request.getParameter("service");
        if (service.equals("add")) {

            String meName = request.getParameter("name");
            int meQuantity = Integer.parseInt(request.getParameter("quan"));
            double mePrice = Double.parseDouble(request.getParameter("price"));
            String meDes = request.getParameter("des");
            String img = request.getParameter("img");
            Medicines me = new Medicines(meName, meQuantity, img, meDes, mePrice);
            dao.Add(me);
            response.sendRedirect("Medicine");
        }
        if (service.equals("update")) {
            int meID  = Integer.parseInt(request.getParameter("meid"));
            String meName = request.getParameter("name");
            int meQuantity = Integer.parseInt(request.getParameter("quan"));
            double mePrice = Double.parseDouble(request.getParameter("price"));
            String meDes = request.getParameter("des");
            String img = request.getParameter("img");
            Medicines me = new Medicines(meID,meName, meQuantity, img, meDes, mePrice);
            dao.UpdateMedicine(me);
            response.sendRedirect("Medicine");
        }
        if(service.equals("delete")){
            int meid = Integer.parseInt(request.getParameter("meid"));
            dao.DeleteMedicine(meid);
            response.sendRedirect("Medicine");
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
