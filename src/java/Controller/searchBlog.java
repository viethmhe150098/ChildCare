/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAOPost;
import Model.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DO THANH TRUNG
 */
public class searchBlog extends HttpServlet {

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
            String txtSearch = request.getParameter("name");

            DBConnect dbconn = new DBConnect();
//            DAOPost dao = new DAOPost();
//            String indexPage = request.getParameter("index");
//            if (indexPage == null) {
//                indexPage = "1";
//            }
//            int index = Integer.parseInt(indexPage);
//            int count = dao.getTotalPost();
//            int endPage = count / 3;
//            if (count % 3 != 0) {
//                endPage++;
//            }
//            request.setAttribute("endP", endPage);
//            request.setAttribute("tag", index);
            
            String sql = "select title, date_create, updata_date, a.image, a.status, PCateName, first_name, last_name, a.pID, content\n"
                    + "from Post as a join PostCategory as b on a.pCateID=b.pCateID\n"
                    + "join Manager as c on a.author=c.mID\n"
                    + "where title like '%" + txtSearch + "%' or last_name like '%" + txtSearch + "%'\n"
                    + "order by updata_date ";
//                    + "offset " + (index - 1) * 3 + " rows fetch next 3 rows only";
            ResultSet rs2 = dbconn.getData(sql);
            request.setAttribute("ketQua1", rs2);
            request.getRequestDispatcher("Blog.jsp").forward(request, response);
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
