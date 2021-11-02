/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAOAdmin;
import DAO.DAOCustomer;
import DAO.DAOManager;
import DAO.DAOStaff;
import DAO.DAOauth;
import Model.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DO THANH TRUNG
 */
public class login extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        request.getRequestDispatcher("Login.jsp").forward(request, response);

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
        String username = request.getParameter("adUser");
        String password = request.getParameter("adPass");
        DBConnect dbconn = new DBConnect();

        DAOauth auth = new DAOauth();
        if (auth.AdAuth(username, "[a-zA-Z][a-zA-Z0-9]+@[a]")) {
            //admin
            DAOAdmin daoad = new DAOAdmin(dbconn);
            if (daoad.loginAdmin(username, password) == null) {
                request.setAttribute("mess", "Wrong user or password");
//                response.sendRedirect("Login.jsp");
                request.getRequestDispatcher("Login.jsp").forward(request, response);

            } else {
                HttpSession session = request.getSession(true);
                session.setAttribute("admin_account", daoad.loginAdmin(username, password));
                response.sendRedirect("AdminController");
//                response.sendRedirect("Susscess.jsp");
            }
        } else if (auth.AdAuth(username, "[a-zA-Z][a-zA-Z0-9]+@[m]")) {
            //manager
            DAOManager daoma = new DAOManager(dbconn);
            if (daoma.loginManager(username, password) == null) {
                request.setAttribute("mess", "Wrong user or password");
//                response.sendRedirect("Login.jsp");
                request.getRequestDispatcher("Login.jsp").forward(request, response);

            } else {
                HttpSession session = request.getSession(true);
                session.setAttribute("manager_account", daoma.loginManager(username, password));
                response.sendRedirect("ManagerController");
//                response.sendRedirect("Susscess.jsp");
            }
        } else if (auth.AdAuth(username, "[a-zA-Z][a-zA-Z0-9]+@[s]")) {
            //staff
            DAOStaff daosta = new DAOStaff(dbconn);
            if (daosta.loginStaff(username, password) == null) {
                request.setAttribute("mess", "Wrong user or password");
//                response.sendRedirect("Login.jsp");
                request.getRequestDispatcher("Login.jsp").forward(request, response);

            } else {
                HttpSession session = request.getSession(true);
                session.setAttribute("staff_account", daosta.loginStaff(username, password));
                response.sendRedirect("StaffController");
//                response.sendRedirect("Susscess.jsp");
            }
        } else {
            //user
            DAOCustomer daocus = new DAOCustomer(dbconn);
            if (daocus.loginCustomer(username, password) == null) {
                request.setAttribute("mess", "Wrong user or password");
                //response.sendRedirect("Login.jsp");
                request.getRequestDispatcher("Login.jsp").forward(request, response);

            } else {
                HttpSession session = request.getSession(true);
                session.setAttribute("customer_account", daocus.loginCustomer(username, password));
                response.sendRedirect("ServiceControl");
//                response.sendRedirect("Susscess.jsp");
            }
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
