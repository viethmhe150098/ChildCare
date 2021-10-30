/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Manager;

import DAO.DAOManager;
import DAO.DAOPost;
import DAO.DAOPostCat;
import DAO.DAOSendEmail;
import DAO.DAOSubscribe;
import Entity.Post;
import Entity.PostCategory;
import Entity.Subscriber;
import Model.DBConnect;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Viet
 */
@WebServlet(name = "PostControler", urlPatterns = {"/PostControler"})
public class PostControler extends HttpServlet {

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
            DAOPostCat dao = new DAOPostCat(dbconn);
            DAOSubscribe daoS = new DAOSubscribe(dbconn);
            String service = request.getParameter("service");
            DAOSendEmail daoSm = new DAOSendEmail();
            DAOManager daoMa = new DAOManager(dbconn);
            DAOPost daoP = new DAOPost(dbconn);
            if (service == null) {
                ArrayList<PostCategory> list = dao.getAllCat();
                request.setAttribute("list", list);
//                request.getRequestDispatcher("Post.jsp").forward(request, response);
                String indexPage = request.getParameter("index");
                if (indexPage == null) {
                    indexPage = "1";
                }
                int index = Integer.parseInt(indexPage);
                int count = daoP.getTotalPost();
                int endPage = count / 3;
                if (count % 3 != 0) {
                    endPage++;
                }
                request.setAttribute("endP", endPage);
                request.setAttribute("tag", index);

                String sql = "select title,Convert(varchar(10),date_create,103) as 'DD/MM/YYYY', updata_date, a.image, a.status, PCateName, first_name, last_name, a.pID,a.content,a.status\n"
                        + "from Post as a join PostCategory as b on a.pCateID=b.pCateID\n"
                        + "join Manager as c on a.author=c.mID\n"
                        + "order by updata_date\n"
                        + "offset " + (index - 1) * 3 + " rows fetch next 3 rows only";
                ResultSet rs1 = dbconn.getData(sql);
                request.setAttribute("ketQua1", rs1);
                request.getRequestDispatcher("Post.jsp").forward(request, response);
            }
            if (service.equals("add")) {
                int author = Integer.parseInt(request.getParameter("author"));
                String title = request.getParameter("title");
                String img = request.getParameter("img");
                int cat = Integer.parseInt(request.getParameter("cat"));
                String content = request.getParameter("content");
                String status = request.getParameter("status");
                String create_date = daoP.getCurrentDate();
                String update_date = daoP.getCurrentDate();
                daoP.addPost(new Post(title, author, create_date, update_date, status, cat, img, content));
                ArrayList<Subscriber> list = daoS.getAllSub();
                if (Integer.parseInt(status) == 1) {
                    for (Subscriber s : list) {
                        daoSm.send(s.getSubEmail(), "Our newest post　has just published ", "Go to our website to read newest post by " + daoMa.getAuthor(author));
                    }
                }
                response.sendRedirect("PostControler");
            }
            if (service.equals("delete")) {
                int pid = Integer.parseInt(request.getParameter("pid"));
                daoP.deletePost(pid);
                response.sendRedirect("PostControler");
            }
            if (service.equals("changeStatus")) {
                int pid = Integer.parseInt(request.getParameter("pid"));
                int sta = Integer.parseInt(request.getParameter("status"));
                if (sta == 1) {
                    daoP.changePostStatus(pid, 0);
                } else {
                    daoP.changePostStatus(pid, 1);
                }
                response.sendRedirect("PostControler");
            }
        } catch (Exception ex) {
            Logger.getLogger(PostControler.class.getName()).log(Level.SEVERE, null, ex);
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
