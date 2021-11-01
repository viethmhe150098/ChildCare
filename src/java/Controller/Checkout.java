/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAOReservation;
import DAO.DAOReservationDetail;
import DAO.DAOService;
import Entity.Customer;
import Entity.Reservation;
import Entity.ReservationDetail;
import Entity.Service;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "Checkout", urlPatterns = {"/Checkout"})
public class Checkout extends HttpServlet {

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
        DAOReservation dbR = new DAOReservation();
        HttpSession session = request.getSession(true);
        DAOReservationDetail daobd = new DAOReservationDetail();
        DAOService daoS = new DAOService();
        Customer cus = (Customer) session.getAttribute("customer_account");
         String service = request.getParameter("service");
          if (service.equals("checkout")) { 
               ArrayList<Reservation> allBill = (ArrayList<Reservation>) dbR.getAllReservation();
               double total = 0;
                int cid = Integer.parseInt(request.getParameter("cid"));
                String name = request.getParameter("name");
                String gender = request.getParameter("gender");
                String email = request.getParameter("mail");
                String phone = request.getParameter("phone");
                String oid = random();
                for (Reservation reser : allBill) {
                    while (oid.equals(reser.getReID())) {
                        oid = random();
                    }
                }
                 Cookie arr[] = request.getCookies();
                ArrayList<ReservationDetail> list = new ArrayList<>();
                
                for (Cookie o : arr) {
                    if (o.getName().equals("id")) {
                        String txt[] = o.getValue().split(",");
                        for (String s : txt) {
                            Service pro = daoS.getServiceByCID1(s);
                            list.add(new ReservationDetail(Integer.parseInt(pro.getsID()), oid, pro.getMaxquantity(), (float) pro.getSprice(),oid));
                        }
                    }
                }
                for (ReservationDetail order : list) {
                    total += order.getQuantity() * order.getPrice();
                }
                System.out.println(total);
                dbR.addReservation(oid, String.valueOf(total), cus.getTel(), cus.getEmail(), "1", cus.getAddress(), cus.getLast_name() +""+cus.getFirst_name(), name, gender, email, phone, oid);
                for (ReservationDetail or : list) {
                   
                    daobd.addReservationDetail(oid, String.valueOf(or.getReID()),String.valueOf(or.getQuantity()) ,String.valueOf(or.getPrice()) ,"1");
                   
                }
                for (Cookie o : arr) {
                    if (o.getName().equals("id")) {
                        o.setMaxAge(0);
                        response.addCookie(o);
                    }
                }
                response.sendRedirect("ServiceControl");
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
public String random() {
        String original = "ABCDEFGHIJKLMNOPKQRTU120345567891011abcdefxhegklmnopfdsfdsoj";
        String capcha = "";
        Random rand = new Random();

        for (int i = 0; i < 5; i++) {
            int index = rand.nextInt(original.length());
            capcha = capcha + original.charAt(index);
        }

        return capcha;
    }
}
