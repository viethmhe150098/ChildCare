/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAOCustomer;
import Entity.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DO THANH TRUNG
 */
public class updateCustomerControl extends HttpServlet {

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
//            response.sendRedirect("CustomerControl");

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
//        processRequest(request, response);

        DAOCustomer dao = new DAOCustomer();
        String cid = request.getParameter("cID");
        Customer cus = dao.getCustomerBycID(cid);
        request.setAttribute("custom", cus);
        request.getRequestDispatcher("UpdateCustomer.jsp").forward(request, response);
//        String firstname = request.getParameter("firstname");
//        String lastname = request.getParameter("lastname");
//        String gender = request.getParameter("gender");
//        String phone = request.getParameter("tel");
//        String email = request.getParameter("email");
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        String status = request.getParameter("status");
//        String address = request.getParameter("address");
//        String age = request.getParameter("age");
//        int role = Integer.parseInt(request.getParameter("role"));
//
//        Customer cus = new Customer(cid, firstname, lastname, gender, email, phone, username, password, age, status, address, role);
//        dao.updateCustomer(cus);
//        response.sendRedirect("CustomerControl");
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
//        processRequest(request, response);
        DAOCustomer dao = new DAOCustomer();
        int cid = Integer.parseInt(request.getParameter("cid"));
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("tel");
        String email = request.getParameter("email");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
//        String status = request.getParameter("status");
        String address = request.getParameter("address");
        String age = request.getParameter("age");
//        int role = Integer.parseInt(request.getParameter("role"));

//        Customer cus = new Customer(cid, firstname, lastname, gender, email, phone, username, password, age, status, address, role);
        dao.updateCustomer1(firstname, lastname, gender, email, phone, username, password, age, address, cid);
        response.sendRedirect("CustomerControl");
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
