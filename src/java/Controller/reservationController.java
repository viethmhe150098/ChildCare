/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAOReservation;
import Entity.Reservation;
import Model.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
public class reservationController extends HttpServlet {

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
            DBConnect dbconn = new DBConnect();

            DAOReservation dao = new DAOReservation();
            String indexPage = request.getParameter("index");
            if (indexPage == null) {
                indexPage = "1";
            }
            int index = Integer.parseInt(indexPage);
            int count = dao.getTotalReservation();
            int endPage = count / 3;
            if (count % 3 != 0) {
                endPage++;
            }
//            List<Reservation> list = dao.pagingReservation(index);
            request.setAttribute("endP", endPage);
            request.setAttribute("tag", index);
//            request.setAttribute("ketQua1", list);

//            String sql = "select b.reID, b.date, b.fullname, b.recceive_name, b.totalprice, b.status, b.recceive_tel, d.sname\n"
//                    + "from Customer as a join Reservation as b on a.cID=b.cid\n"
//                    + "join ReservationDetail as c on b.reID=c.reID\n"
//                    + "join Service as d on c.serID=d.sID order by b.fullname";
            
            String sql = "select b.reID, Convert(varchar(10),b.date,103) as 'dd/MM/yyyy', b.fullname, b.receive_name, b.totalprice, b.status, b.receive_tel, d.sname\n"
                    + "from Customer as a join Reservation as b on a.cID=b.cid\n"
                    + "join ReservationDetail as c on b.reID=c.reID\n"
                    + "join Service as d on c.sID=d.sID order by b.fullname "
                    + "offset " + (index - 1) * 3 + " rows fetch next 3 rows only";
            ResultSet rs1 = dbconn.getData(sql);
            request.setAttribute("ketQua1", rs1);
            dispatch(request, response, "/ReservationList.jsp");
        }

    }

    private void dispatch(HttpServletRequest request, HttpServletResponse response, String URL) {
        RequestDispatcher dis = request.getRequestDispatcher(URL);
        try {
            dis.forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(reservationController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(reservationController.class.getName()).log(Level.SEVERE, null, ex);
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
