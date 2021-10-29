/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.SerCate;
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
public class DAOSerCat {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;

    public DAOSerCat(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public DAOSerCat() {
    }
    public ArrayList<SerCate> getAllCate(){
        ArrayList<SerCate> list = new ArrayList<>();
        ResultSet rs = dbconn.getData("select * from SerCate");
        try {
            while (rs.next()) {
                list.add(new SerCate(rs.getString(1), rs.getString(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSerCat.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public void AddSerCat(SerCate s){
        try {
            conn =dbconn.getConnection();
            ps = conn.prepareStatement("insert into SerCate(scCateName) values (?)");
            ps.setString(1, s.getScCateName());
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOSerCat.class.getName()).log(Level.SEVERE, null, ex);
        }      
    }
    
    public List<SerCate> getAllServiceCate() {
        List<SerCate> list = new ArrayList<>();
        ResultSet rs = dbconn.getData("select * from SerCate");
        try {
            while (rs.next()) {
                list.add(new SerCate(rs.getString(1), rs.getString(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSerCat.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public SerCate getSerCateBycID(String scID) {
        String sql = "select * from SerCate where scID=?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, scID);
            rs = ps.executeQuery();

            while (rs.next()) {
                SerCate postcate = new SerCate(rs.getString(1), rs.getString(2));
                return postcate;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOSerCat.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOSerCat.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void updateServiceCate(String scCateName, String scid) {
        try {
            String sql = "update SerCate set scCateName=? where scID=?";
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(1, scCateName);
            ps.setString(2, scid);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOSerCat.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addServiceCate(String scCateName) {

        String query = "insert into SerCate(scCateName)\n"
                + "values(?)";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, scCateName);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOSerCat d = new DAOSerCat(dbconn);
        ArrayList<SerCate> list = d.getAllCate();
        for (SerCate s : list) {
            System.out.println(s);
        }
    }
}
