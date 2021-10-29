/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.PostCategory;
import Model.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Viet
 */
public class DAOPostCat {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;

    public DAOPostCat(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public DAOPostCat() {
    }

    public ArrayList<PostCategory> getAllCat() {
        ArrayList<PostCategory> list = new ArrayList<>();
        ResultSet rs = dbconn.getData("select * from PostCategory");
        try {
            while (rs.next()) {
                list.add(new PostCategory(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOPostCat.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void addCate(PostCategory post) {
        String sql = "insert into PostCategory(PCateName) values (?)";
        try {
            conn = dbconn.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, post.getpCateName());

            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOPostCat.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<PostCategory> getAllCat1() {
        List<PostCategory> list = new ArrayList<>();
        ResultSet rs = dbconn.getData("select * from PostCategory");
        try {
            while (rs.next()) {
                list.add(new PostCategory(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOPostCat.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public PostCategory getPostCateBycID(String pID) {
        String sql = "select * from PostCategory where pCateID=?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, pID);
            rs = ps.executeQuery();

            while (rs.next()) {
                PostCategory postcate = new PostCategory(rs.getInt(1), rs.getString(2));
                return postcate;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOPostCat.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOPostCat.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void updatePostCate(String pcatename, int pcateid) {
        try {
            String sql = "update PostCategory set PCateName=? where pCateID=?";
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(1, pcatename);
            ps.setInt(2, pcateid);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOPostCat.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addPostCate(String pcatename) {

        String query = "insert into PostCategory(PCateName)\n"
                + "values(?)";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pcatename);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOPostCat d = new DAOPostCat(dbconn);

        d.updatePostCate("public", 1);
    }
}
