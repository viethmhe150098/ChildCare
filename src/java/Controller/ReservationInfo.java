/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.DAOReservation;
import DAO.DAOReservationDetail;
import DAO.DAOStaff;
import Entity.Customer;
import Entity.Reservation;
import Entity.ReservationDetail;
import Entity.Result;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Viet
 */
public class ReservationInfo extends HttpServlet {

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
            DBConnect dbconn = new DBConnect();
            DAOReservation dao = new DAOReservation(dbconn);
            DAOReservationDetail daoDE = new DAOReservationDetail(dbconn);
            DAOStaff daoS = new DAOStaff(dbconn);
            HttpSession session = request.getSession();
            Customer c = (Customer) session.getAttribute("customer_account");
            String cid = String.valueOf(c.getcID());
            String reID = request.getParameter("reID");
            if (dao.acceptAccess(cid, reID)) {
                
                Reservation re = dao.searchbyID(reID);
                ResultSet rs = daoDE.searchByReID(reID);
                request.setAttribute("staff", daoS.getStaffrByID(dao.getDoctor(reID)));
                request.setAttribute("rs", rs);
                request.setAttribute("re", re);
                request.getRequestDispatcher("reinfo.jsp").forward(request, response);
            }else{
                response.sendRedirect("404.html");
            }
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
