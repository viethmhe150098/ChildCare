/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import DAO.DAOStaff;
import Entity.Staff;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "UpdateStaff", urlPatterns = {"/UpdateStaff"})
public class UpdateStaff extends HttpServlet {

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
       
         DAOStaff dao = new DAOStaff();
            String cid = request.getParameter("cid");
            Staff listUser = dao.getStaffrByID(cid);
            request.setAttribute("listUser", listUser);
            request.getRequestDispatcher("UpdateStaff.jsp").forward(request, response);
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
        DAOStaff dao = new DAOStaff();
         int cid = Integer.parseInt(request.getParameter("cid"));
        String fname = request.getParameter("firstname");
                String aId = request.getParameter("aID");
                        String lname = request.getParameter("lastname");
                                String age = request.getParameter("age");
                                        String gender = request.getParameter("gender");
       String user = request.getParameter("user");
        String pass = request.getParameter("pass");
                String img = request.getParameter("image");
                String address = request.getParameter("address");
                     String role = request.getParameter("role");
                                          String doctor= request.getParameter("doctor");

                             String email = request.getParameter("email");
                             String phone = request.getParameter("phone");
                             dao.updateStaff(fname, aId, lname, age, gender, user, pass, img, address, role, doctor, email, phone, cid);
                              response.sendRedirect("userControl");

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
