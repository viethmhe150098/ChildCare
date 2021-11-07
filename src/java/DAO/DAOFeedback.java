/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Feedback;
import Model.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DAOFeedback {
      Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;
     public List<Feedback> pagingFeedback(int index) {
        List<Feedback> list = new ArrayList<>();
        String sql = "select * from feedback\n"
                + "order by fID\n"
                + "offset ? rows fetch next 3 rows only";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 3);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),                    
                        rs.getString(4),
                        rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8), rs.getInt(9),rs.getString(10)));
            }

        } catch (Exception e) {

        }
        return list;
    }

     public List<Feedback> searchByName(String txtSearch) {
        List<Feedback> list = new ArrayList<>();
        String query = "select * from Feedback\n"
                + "where [name] like ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),                    
                        rs.getString(4),
                        rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8), rs.getInt(9),rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }
      public List<Feedback> getByName() {
        List<Feedback> list = new ArrayList<>();
        String sql = "select * from feedback order by name;";
               
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),                    
                        rs.getString(4),
                        rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8), rs.getInt(9),rs.getString(10)));
            }

        } catch (Exception e) {

        }
        return list;
    }
    
      public List<Feedback> getByStar() {
        List<Feedback> list = new ArrayList<>();
        String sql = "select * from feedback order by star";
               
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),                    
                        rs.getString(4),
                        rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8), rs.getInt(9),rs.getString(10)));
            }

        } catch (Exception e) {

        }
        return list;
    }
       public List<Feedback> getAllFeedback() {
        List<Feedback> list = new ArrayList<>();
        String sql = "select * from feedback order by fID";
               
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),                    
                        rs.getString(4),
                        rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8), rs.getInt(9),rs.getString(10)));
            }

        } catch (Exception e) {

        }
        return list;
    }
      public Feedback getFeedbackByID(String fid) {
        List<Feedback> list = new ArrayList<>();
        String query = "select * from feedback where fID=?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, fid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),                    
                        rs.getString(4),
                        rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8), rs.getInt(9),rs.getString(10));
            }
        } catch (Exception e) {
        }
        return null;
    }
        public List<Feedback> SearchFeedback(String name, String phone) {
        List<Feedback> list = new ArrayList<>();
        String sql = "select * from feedback where name like ? or mobile=?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + name + "%");
            ps.setString(2, phone);
//            ps.setString(2, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),                    
                        rs.getString(4),
                        rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8), rs.getInt(9),rs.getString(10)));
            }

        } catch (Exception e) {

        }
        return list;
    }
     public int getTotalFeedback() {
        String sql = "select count(*) from feedback";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }
     public void Insert(String content, int sID, String email, String name, String mobile, String gender, String image, int star, String description) {

        String query = "insert into feedback(content,sID,email,name,mobile,gender,image,star,description) VALUES(?,?,?,?,?,?,?,?,?)";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, content);
            ps.setInt(2, sID);
            ps.setString(3, email);
            ps.setString(4, name);
            ps.setString(5, mobile);
            ps.setString(6, gender);
            ps.setString(7, image);
            ps.setInt(8, star);
            ps.setString(9, description);
         

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
      public static void main(String[] args) {
          DAOFeedback  dao = new DAOFeedback();
          List<Feedback> list = dao.getByStar();
          for(Feedback o : list){
              System.out.println(o);
          }
          int a=dao.getTotalFeedback();
          System.out.println(a);
      }
}
