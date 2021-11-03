/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Staff;

import DAO.DAOMedicine;
import DAO.DAOPrescription;
import Entity.Medicines;
import Entity.Order;
import Entity.Presciption;
import Model.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Viet
 */
@WebServlet(name = "StaffMedicine", urlPatterns = {"/StaffMedicine"})
public class StaffMedicine extends HttpServlet {

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
            DAOMedicine dao = new DAOMedicine(dbconn);
            String service = request.getParameter("service");
            
            if (service == null) {
                
                request.getRequestDispatcher("addPres.jsp").forward(request, response);
            }
            if (service.equals("addMed")) {
                String id = request.getParameter("meid");
                Cookie arr[] = request.getCookies();
                String txt = "";
                for (Cookie o : arr) {
                    if (o.getName().equals("id")) {
                        txt = txt + o.getValue();
                        o.setMaxAge(0);
                        response.addCookie(o);
                    }
                }
                if (txt.isEmpty()) {
                    txt = id;
                } else {
                    txt = txt + "," + id;
                }
                Cookie c = new Cookie("id", txt);
                c.setMaxAge(60 * 60 * 24);
                response.addCookie(c);
                response.sendRedirect("StaffMedicine?service=show");
            }
            if (service.equals("show")) {
                ArrayList<Order> list = new ArrayList<>();
                Cookie arr[] = request.getCookies();
                for (Cookie o : arr) {
                    if (o.getName().equals("id")) {

                        String txt1[] = o.getValue().split(",");
                        for (String s : txt1) {
                            Medicines me = dao.searchByID(s);
//                            System.out.println(s);
                            list.add(new Order(String.valueOf(me.getMeID()), me.getMeName(), me.getMePrice(), 1));
                        }
                    }
                }

                for (int i = 0; i < list.size(); i++) {
                    int count = 1;
                    for (int j = i + 1; j < list.size(); j++) {
                        if (list.get(i).getSid().equals(list.get(j).getSid())) {
                            count++;
                            System.out.println(count);
                            list.remove(j);
                            j--;
                            list.get(i).setAmount(count);
                        }
                    }
                }

                request.setAttribute("list", list);
                request.getRequestDispatcher("addPres.jsp").forward(request, response);
            }
            if (service.equals("sub")) {
                String id = request.getParameter("meid");
                Cookie arr[] = request.getCookies();
                String txt = "";
                for (Cookie o : arr) {
                    if (o.getName().equals("id")) {
                        txt = txt + o.getValue();
                        o.setMaxAge(0);
                        response.addCookie(o);
                    }
                }
                String ids[] = txt.split(",");
                String txtOutPut = "";
                int check = 0;
                for (int i = 0; i < ids.length; i++) {
                    if (ids[i].equals(id)) {
                        check++;
                    }
                    if (check != 1) {
                        if (txtOutPut.isEmpty()) {
                            txtOutPut = ids[i];
                        } else {
                            txtOutPut = txtOutPut + "," + ids[i];
                        }
                    } else {
                        check++;
                    }
                }
                if (!txtOutPut.isEmpty()) {
                    Cookie c = new Cookie("id", txtOutPut);
                    c.setMaxAge(60 * 60 * 24);
                    response.addCookie(c);
                }
                response.sendRedirect("StaffMedicine?service=show");

            }
            if (service.equals("checkout")) {
                Cookie arr[] = request.getCookies();
                ArrayList<Order> list = new ArrayList<>();
                ArrayList<Order> listO = new ArrayList<>();
                ArrayList<Presciption> listP = new ArrayList<>();
                DAOPrescription daoP = new DAOPrescription(dbconn);
                for (Cookie o : arr) {
                    if (o.getName().equals("id")) {

                        String txt1[] = o.getValue().split(",");
                        for (String s : txt1) {
                            Medicines me = dao.searchByID(s);
//                            System.out.println(s);
                            list.add(new Order(String.valueOf(me.getMeID()), me.getMeName(), me.getMePrice(), 1));
                        }
                    }
                }
                for (int i = 0; i < list.size(); i++) {
                    int count = 1;
                    for (int j = i + 1; j < list.size(); j++) {
                        if (list.get(i).getSid().equals(list.get(j).getSid())) {
                            count++;
                            System.out.println(count);
                            list.remove(j);
                            j--;
                            list.get(i).setAmount(count);
                        }
                    }
                }
                HttpSession session = request.getSession();
                String rid = (String) session.getAttribute("reid");
                for (Order o : list) {
                    daoP.addPres(new Presciption(rid, Integer.parseInt(o.getSid()), o.getAmount()));
                }
                for (Cookie o : arr) {
                    if (o.getName().equals("id")) {
                        o.setMaxAge(0);
                        response.addCookie(o);
                    }
                }
                
                response.sendRedirect("reservationController");
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
