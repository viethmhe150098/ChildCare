/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Manager;

import DAO.DAOCustomer;
import Entity.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DO THANH TRUNG
 */
public class searchCustomerControl extends HttpServlet {

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
            DAOCustomer dao = new DAOCustomer();
//            String txtSearch = request.getParameter("name");
//            String indexPage = request.getParameter("index");
//            if (indexPage == null) {
//                indexPage = "1";
//            }
//            int index = Integer.parseInt(indexPage);
//
//            int count = dao.getTotalCustomer();
//            List<Customer> listC = dao.getAllCustomer1();
//            int endPage = count / 3;
//            if (count % 3 != 0) {
//                endPage++;
//            }
//            List<Customer> list = dao.pagingSearchCustomer(index, txtSearch);
//            request.setAttribute("endP", endPage);
//            request.setAttribute("tag", index);
//            request.setAttribute("listC", list);

            String txtSearch = request.getParameter("name");
            List<Customer> list = dao.SearchCustomer(txtSearch, txtSearch);
            request.setAttribute("listC", list);
            request.getRequestDispatcher("CustomerList.jsp").forward(request, response);
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
