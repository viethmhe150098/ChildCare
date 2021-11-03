/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Manager;
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
 * @author DO THANH TRUNG
 */
public class DAOManager {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;

    public DAOManager(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public DAOManager() {
    }

    public Manager loginManager(String username, String password) {
        try {
            String sql = "select * from Manager where username = ? and password = ?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();

            while (rs.next()) {
                Manager mana = new Manager(rs.getInt(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getInt(10), rs.getString(11));
                return mana;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Manager> getAllManager() {
        ArrayList<Manager> arr = new ArrayList<Manager>();
        String sql = "select * from Manager";
        ResultSet rs = dbconn.getData(sql);
        try {
            while (rs.next()) {
                Manager mana = new Manager(rs.getInt(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getInt(10), rs.getString(11));
                arr.add(mana);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }

    public List<Manager> getAllManager1() {
        List<Manager> list = new ArrayList<>();
        String query = "select * from Manager";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Manager(rs.getInt(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }
     public Manager getManagerrByID(String cid) {
        List<Manager> list = new ArrayList<>();
        String query = "select * from Manager where mID=?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Manager(rs.getInt(1), rs.getInt(2), rs.getString(3),
                        rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getInt(10), rs.getString(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //author Viet
    public String getAuthor(int id){
        ResultSet rs = dbconn.getData("select first_name+' '+last_name from Manager where mID="+id);
        String author = null;
        try {
            while (rs.next()) {
                author = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return author;
    }
    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOManager dao = new DAOManager(dbconn);
        Manager a = dao.getManagerrByID("1");
//        System.out.println(dao.getAuthor(1));
System.out.println(a);
//        if(dao.loginManager("thanh", "123456")==null){
//            System.out.println("not ok");
//        }else{
//            System.out.println("ok");
//        }
//            System.out.println(dao.loginManager("thanh@m", "12345678"));
    }
}
