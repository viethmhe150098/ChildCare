/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Post;
import Model.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DO THANH TRUNG
 */
public class DAOPost {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;

    public DAOPost(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public DAOPost() {
    }
    
//    public ResultSet blogDetail(String pID) {
//        ResultSet rs = dbconn.getData("select title, Convert(varchar(10),date_create,103) as 'dd/MM/yyyy', Convert(varchar(10),updata_date,103) as 'dd/MM/yyyy', a.image, a.status, PCateName, first_name, last_name, a.pID, content\n"
//                    + "                    from Post as a join PostCategory as b on a.pCateID=b.pCateID\n"
//                    + "                    join Manager as c on a.author=c.mID\n"
//                    + "					where pID= " + pID);
//        return rs;
//    }

    public List<Post> getListPost() {
        List<Post> Post = new ArrayList<>();
        try {
            String sql = "Select * from Post";

            try {
                conn = new DBConnect().getConnection();//mo ket noi voi sql
            } catch (Exception ex) {
                Logger.getLogger(DAOPost.class.getName()).log(Level.SEVERE, null, ex);
            }
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Post.add(new Post(rs.getString(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(5)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Post;
    }

    public Post getPostBypID(String pID) {
        String sql = "select * from Post where pID = ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, pID);
            rs = ps.executeQuery();

            while (rs.next()) {
                Post post = new Post(rs.getString(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7),
                        rs.getString(9), rs.getString(8));
                return post;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOPost.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOPost.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void addPost(Post p) {
        String sql = "insert into Post(title, date_create, updata_date, image, status, pCateID, content,author\n"
                + ")\n"
                + "values(?,?,?,?,?,?,?,?)";
        try {
            conn = dbconn.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, p.getTitle());
            ps.setString(2, p.getDate_create());
            ps.setString(3, p.getUpdata_date());
            ps.setString(4, p.getImage());
            ps.setString(5, p.getStatus());
            ps.setInt(6, p.getPcateID());
            ps.setString(7, p.getContent());
            ps.setInt(8, p.getmID());
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOPost.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void deletePost(int id) {
        try {
            conn = dbconn.getConnection();
            ps = conn.prepareStatement("delete from Post where pid = " + id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOPost.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void changePostStatus(int id, int status) {
        try {
            conn = dbconn.getConnection();
            ps = conn.prepareStatement("update Post set status = ? where pid = ?");
            ps.setInt(1, status);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOPost.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void updatePost(String title, String dateupdate, String image,
            String status, int pCateID, String content, int pID) {
        try {
            String sql = "update Post set title=?, updata_date=?, image=?, status=?, pCateID=?, content=? where pID=?";
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, dateupdate);
            ps.setString(3, image);
            ps.setString(4, status);
            ps.setInt(5, pCateID);
            ps.setString(6, content);
            ps.setInt(7, pID);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOPost.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int getTotalPost() {
        String sql = "select count(*) from Post";
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

    public String getCurrentDate() {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        return dateFormat.format(date);
    }

    public void PublicPost(String pID) {
        //set status = 1 => public
        String sql = "update Post set status = 1 where pID= ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, pID);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } catch (Exception ex) {
            Logger.getLogger(DAOPost.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void HidePost(String pID) {
        //set status = 0 => hide
        String sql = "update Post set status = 0 where pID= ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, pID);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } catch (Exception ex) {
            Logger.getLogger(DAOPost.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOPost d = new DAOPost(dbconn);
//        List<Post> list = d.getListPost();
        
        System.out.println(d.getPostBypID("4"));
        
        
    }
}
