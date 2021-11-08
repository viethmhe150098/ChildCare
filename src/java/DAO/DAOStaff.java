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
import java.util.List;
import java.util.Random;
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

    public DAOStaff() {
    }

    public Staff loginStaff(String username, String password) {
        try {
            String sql = "select * from Staff where username = ? and password = ?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();

            while (rs.next()) {
                Staff sta = new Staff(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10),
                        rs.getInt(11), rs.getInt(12));
                return sta;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOStaff.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int getTotalStaff() {
        String sql = "select count(*) from Staff";
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

    public List<Staff> pagingStaff(int index) {
        List<Staff> list = new ArrayList<>();
        String sql = "select * from Staff\n"
                + "order by stID\n"
                + "offset ? rows fetch next 3 rows only";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 3);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Staff(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10),
                        rs.getInt(11), rs.getInt(12),rs.getString(13),rs.getString(14)));
            }

        } catch (Exception e) {

        }
        return list;
    }

    public Staff getStaffrByID(String cid) {
        List<Staff> list = new ArrayList<>();
        String query = "select * from Staff where stID=?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Staff(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10),
                        rs.getInt(11), rs.getInt(12), rs.getString(13), rs.getString(14));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void addStaff(String firstname, String aID, String lastname, String age, String gender, String username, String password,
            String image, String address, String role, String isDoctor, String email, String phone) {

        String query = "insert into Staff(first_name,aID,last_name,age,gender,username,[password],image,address,role,isDoctor,email,phone)\n"
                + "                 values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, firstname);
            ps.setString(2, aID);
            ps.setString(3, lastname);
            ps.setString(4, age);
            ps.setString(5, gender);
            ps.setString(6, username);
            ps.setString(7, password);
            ps.setString(8, image);
            ps.setString(9, address);
            ps.setString(10, role);
            ps.setString(11, isDoctor);
            ps.setString(12, email);
            ps.setString(13, phone);

            System.out.println("OK");

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public ArrayList<Staff> getAllStaff() {
        ArrayList<Staff> arr = new ArrayList<Staff>();
        String sql = "select * from Staff";
        ResultSet rs = dbconn.getData(sql);
        try {
            while (rs.next()) {
                Staff sta = new Staff(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10),
                        rs.getInt(11), rs.getInt(12));
                arr.add(sta);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOStaff.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }

    public List<Staff> getAllStaff1() {
        List<Staff> list = new ArrayList<>();
        String query = "select * from Staff";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Staff(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10),
                        rs.getInt(11), rs.getInt(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Staff autoAssign() {
        ArrayList<Staff> list = new ArrayList<>();
        ResultSet rs = dbconn.getData("select * from Staff where isDoctor = 1");
        try {
            while (rs.next()) {
                list.add(new Staff(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6),
                        rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getInt(12), rs.getString(13), rs.getString(14)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOStaff.class.getName()).log(Level.SEVERE, null, ex);
        }
        Random generator = new Random();
        int ran = generator.nextInt(list.size()) ;
        for (int i = 0; i < list.size(); i++) {
            return list.get(ran);
        }
        return null;
    }
   
    
    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOStaff dao = new DAOStaff(dbconn);
        List<Staff> list = dao.pagingStaff(1);
        
        for (Object o : list) {
            System.out.println(o);
        }
//        }
//        Staff a = dao.getStaffrByID("2");
//        System.out.println(dao.autoAssign());
//
//        if(dao.loginStaff("huy@s", "123456")==null){
//            System.out.println("not ok");
//        }else{
//            System.out.println("ok");
//        }

//        System.out.println(dao.loginStaff("huy@s", "12345678"));
    }
}
