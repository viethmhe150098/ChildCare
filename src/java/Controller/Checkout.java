/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAOCustomer;
import DAO.DAOReservation;
import DAO.DAOReservationDetail;
import DAO.DAOSendEmail;
import DAO.DAOService;
import DAO.DAOStaff;
import Entity.Customer;
import Entity.Order;
import Entity.Reservation;
import Entity.ReservationDetail;
import Entity.Service;
import Entity.Staff;
import Model.DBConnect;
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
        DBConnect dbconn = new DBConnect();
        DAOReservation dbR = new DAOReservation();
        HttpSession session = request.getSession(true);
        DAOReservationDetail daobd = new DAOReservationDetail();
        DAOService daoS = new DAOService();
        DAOCustomer daoC = new DAOCustomer(dbconn);
        Customer cus = (Customer) session.getAttribute("customer_account");
        DAOStaff daoSt = new DAOStaff(dbconn);
        String service = request.getParameter("service");
        if (service.equals("checkout")) {
            ArrayList<Reservation> allBill = (ArrayList<Reservation>) dbR.getAllReservation();
            double total = 0;
            
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String oid = random();
            for (Reservation reser : allBill) {
                while (oid.equals(reser.getReID())) {
                    oid = random();
                }
            }
            Cookie arr[] = request.getCookies();
            ArrayList<ReservationDetail> list = new ArrayList<>();
            ArrayList<Order> listO = new ArrayList<>();
            for (Cookie o : arr) {
                if (o.getName().equals("id")) {
                    String txt[] = o.getValue().split(",");
                    for (String s : txt) {
                        Service pro = daoS.getServiceByCID1(s);
                        listO.add(new Order(pro.getsID(), pro.getSname(), pro.getSprice(), 1));
                    }
                }
            }
            for (int i = 0; i < listO.size(); i++) {
                int count = 1;
                for (int j = i + 1; j < listO.size(); j++) {
                    if (listO.get(i).getSid().equals(listO.get(j).getSid())) {
                        count++;
                        listO.remove(j);
                        j--;
                        listO.get(i).setAmount(count);
                    }
                }
            }
            for (Order order : listO) {
                total += order.getAmount() * order.getPrice();
            }

            System.out.println();
            System.out.println(cus);
            System.out.println(name);
            System.out.println("gender:"+gender);
            System.out.println(email);
            System.out.println(phone);
            System.out.println(oid);
            String stid = String.valueOf(daoSt.autoAssign().getStID());
            Staff s = daoSt.getStaffrByID(stid);
            dbR.addReservation(oid, String.valueOf(total), cus.getTel(), cus.getEmail(), "1", 
                    cus.getAddress(), cus.getLast_name() + "" + cus.getFirst_name(),
                    name, gender, email, phone, String.valueOf(cus.getcID()),stid);
            for (Order o : listO) {
                 daobd.addReservationDetail(o.getSid(),oid, String.valueOf(o.getAmount()), String.valueOf(o.getPrice()));
            }
            for (Cookie o : arr) {
                if (o.getName().equals("id")) {
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
            DAOSendEmail DAOemail = new DAOSendEmail();
            DAOemail.send(cus.getEmail(), "Your reservation have been submitted", "Your reservation have been submitted and automatically assigned, doctor will contact you soon to arrange a time for medical examination"
                    + ",for more information please go to MY RESERVATION");
            request.setAttribute("listO", listO);
            request.setAttribute("oid", oid);
            request.setAttribute("name", name);
            request.setAttribute("gender", gender);
            request.setAttribute("email", email);
            request.setAttribute("phone", phone);
            request.setAttribute("total", total);
            request.setAttribute("staff", s);
            request.getRequestDispatcher("recom.jsp").forward(request, response);
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
        String original = "0123456789";
        String capcha = "";
        Random rand = new Random();

        for (int i = 0; i < 6; i++) {
            int index = rand.nextInt(original.length());
            capcha = capcha + original.charAt(index);
        }

        return capcha;
    }
}
