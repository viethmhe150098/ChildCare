/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Staff;
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
 * @author DO THANH TRUNG
 */
public class DAOStaff {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;

    public DAOStaff(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public Staff loginStaff(String username, String password) {
        try {
            String sql = "select * from Staff where username = ? and password = ?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();

            while (rs.next()) {
                Staff sta = new Staff(rs.getString(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8), rs.getInt(9));
                return sta;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOStaff.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Staff> getAllStaff() {
        ArrayList<Staff> arr = new ArrayList<Staff>();
        String sql = "select * from Staff";
        ResultSet rs = dbconn.getData(sql);
        try {
            while (rs.next()) {
                Staff sta = new Staff(rs.getString(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8), rs.getInt(9));
                arr.add(sta);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOStaff.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }

    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOStaff dao = new DAOStaff(dbconn);
        ArrayList<Staff> list = dao.getAllStaff();
        for (Object o : list) {
            System.out.println(o);
        }
//
//        if(dao.loginStaff("huy@s", "123456")==null){
//            System.out.println("not ok");
//        }else{
//            System.out.println("ok");
//        }

//        System.out.println(dao.loginStaff("huy@s", "12345678"));
        
    }
}
