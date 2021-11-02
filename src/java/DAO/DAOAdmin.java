/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Admin;
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
public class DAOAdmin {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;

    public DAOAdmin(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public Admin loginAdmin(String username, String password) {
        try {
            String sql = "select * from [dbo].[admin] where username = ? and password = ?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();

            while (rs.next()) {
                Admin ad = new Admin(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
                return ad;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Admin> getAllAdmin() {
        ArrayList<Admin> arr = new ArrayList<Admin>();
        String sql = "select * from [dbo].[admin]";
        ResultSet rs = dbconn.getData(sql);
        try {
            while (rs.next()) {
                Admin ad = new Admin(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
                arr.add(ad);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }

    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOAdmin dao = new DAOAdmin(dbconn);
//        ArrayList<Admin> list = dao.getAllAdmin();
//        for (Object o : list) {
//            System.out.println(o);
//        }

//        if(dao.loginAdmin("manh", "123456")==null){
//            System.out.println("not ok");
//        }else{
//            System.out.println("ok");
//        }
//        System.out.println(dao.loginAdmin("trung@a", "12345678"));
        System.out.println(dao.loginAdmin("trung@a", "12345678"));
    }
}
