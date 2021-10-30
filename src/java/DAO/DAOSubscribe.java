/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Subscriber;
import Model.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Viet
 */
public class DAOSubscribe {

    Connection conn = null;
    DBConnect dbconn = null;

    public DAOSubscribe(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public boolean checkDupEmail(String email) {
        ResultSet rs = dbconn.getData("select * from subscribers where subEmail='" + email+"'");
        try {
            while (rs.next()) {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSubscribe.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

    public void addSub(String email) {
        String query = "insert into subscribers(subEmail) values (?) ";
        try {
            conn = dbconn.getConnection();
            PreparedStatement pre = null;
            pre = conn.prepareStatement(query);
            pre.setString(1, email);
            pre.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOSubscribe.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<Subscriber> getAllSub(){
        ArrayList<Subscriber> list = new ArrayList<>();
        ResultSet rs = dbconn.getData("select * from Subscribers");
        try {
            while (rs.next()) {
                list.add(new Subscriber(rs.getString(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSubscribe.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOSubscribe d = new DAOSubscribe(dbconn);
        ArrayList<Subscriber> list = d.getAllSub();

    }
}
