/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Staff;

import DAO.DAOReservation;
import DAO.DAOReservationDetail;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author DO THANH TRUNG
 */
public class reservationDetail extends HttpServlet {

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
            String reID = request.getParameter("reID");
            HttpSession session = request.getSession();
            DAOReservationDetail daoDE = new DAOReservationDetail(dbconn);
            session.setAttribute("reid", reID);
//            String sql = "select b.reID, Convert(varchar(10),b.date,103) as 'DD/MM/YYYY', b.fullname, b.mail, b.phone, b.receive_name, b.receive_tel, b.receive_gender, e.content,\n"
//                    + "b.receive_mail, b.totalprice, b.status, d.sname\n"
//                    + "from Customer as a join Reservation as b on a.cID=b.cid\n"
//                    + "join ReservationDetail as c on b.reID=c.reID\n"
//                    + "join Service as d on c.sID=d.sID\n"
//                    + "join result as e on b.reID=e.reID\n"
//                    + "where b.reID = " + reID;

            ResultSet rs3 = daoDE.reserDetail(reID);
            ResultSet rs4 = daoDE.reserDetail(reID);
            ResultSet rs5 = daoDE.reserDetail(reID);
//            ResultSet rs3 = dbconn.getData(sql);
            request.setAttribute("reserDetail", rs3);
            request.setAttribute("reserDetail4", rs4);
            request.setAttribute("reserDetail5", rs5);
            
            dispatch(request, response, "/ReservationDetail.jsp");
        }
    }

    private void dispatch(HttpServletRequest request, HttpServletResponse response, String URL) {
        RequestDispatcher dis = request.getRequestDispatcher(URL);
        try {
            dis.forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(reservationDetail.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(reservationDetail.class.getName()).log(Level.SEVERE, null, ex);
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
