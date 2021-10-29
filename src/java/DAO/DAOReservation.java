/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Reservation;
import Model.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Viet
 */
public class DAOReservation {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;

    public DAOReservation(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public DAOReservation() {
    }

    private static final String alpha = "abcdefghijklmnopqrstuvwxyz"; // a-z
    private static final String alphaUpperCase = alpha.toUpperCase(); // A-Z
    private static final String digits = "0123456789"; // 0-9
    private static final String specials = "~=+%^*/()[]{}/!@#$?|";
    private static final String ALPHA_NUMERIC = alpha + alphaUpperCase + digits;
    private static final String ALL = alpha + alphaUpperCase + digits + specials;
    private static Random generator = new Random();

    public List<Reservation> getReverbycid(String cid) {
        List<Reservation> list = new ArrayList<>();
        String sql = "select b.reID, b.date, b.totalprice,b.phone, b.mail, b.status, b.fullname, b.receive_name, b.receive_gender, b.receive_mail, b.receive_tel, d.sname\n"
                + "from Customer as a join Reservation as b on a.cID=b.cid\n"
                + "join ReservationDetail as c on b.reID=c.reID\n"
                + "join Service as d on c.sID=d.sID\n"
                + "where a.cID = " + cid;
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Reservation(rs.getString(1), rs.getString(2), rs.getFloat(3), rs.getString(4), rs.getString(5),
                        rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10), rs.getString(11), rs.getString(12)));
            }

        } catch (Exception e) {

        }
        return list;
    }

    public String randomAlphaNumeric(int numberOfCharactor) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < numberOfCharactor; i++) {
            int number = randomNumber(0, digits.length() - 1);
            char ch = digits.charAt(number);
            sb.append(ch);
        }
        return sb.toString();
    }

    public static int randomNumber(int min, int max) {
        return generator.nextInt((max - min) + 1) + min;
    }

    public Reservation searchbyID(String reID) {
        String sql = "select * from Reservation where reID=" + reID;
        try {
            PreparedStatement pr = conn.prepareStatement(sql);
            ResultSet rs = pr.executeQuery();
            while (rs.next()) {
                return new Reservation(rs.getString(1), rs.getString(2), rs.getFloat(3), rs.getString(4), rs.getString(5),
                        rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getString(11), rs.getString(12));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int getTotalReservation() {
        String sql = "select count(*) from reservation";
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

    public List<Reservation> pagingReservation(int index) {
        List<Reservation> list = new ArrayList<>();
        String sql = "select * from reservation\n"
                + "order by cID\n"
                + "offset ? rows fetch next 3 rows only";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 3);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Reservation(rs.getString(1), rs.getString(2), rs.getFloat(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getInt(10), rs.getString(11), rs.getString(12), rs.getInt(13)));
            }

        } catch (Exception e) {

        }
        return list;
    }

//    public int changeStatus(int reID, int status) {
//        int n = 0;
//        String sql = "update Reservation set status = ? where reID= ?";
//        try {
//            PreparedStatement pre = conn.prepareStatement(sql);
//            pre.setInt(1, status);
//            pre.setInt(2, reID);
//            n = pre.executeUpdate();
//        } catch (SQLException ex) {
//            java.util.logging.Logger.getLogger(DAOReservation.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return n;
//    }
    public void AcceptReservation(String reID) {
        //set status = 1 => shipped
        String sql = "update Reservation set status = 1 where reID= ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, reID);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } catch (Exception ex) {
            Logger.getLogger(DAOReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void RejectReservation(String reID) {
        //set status = 0 => waiting
        String sql = "update [dbo].[Reservation] set status = 0 where reID= ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, reID);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } catch (Exception ex) {
            Logger.getLogger(DAOReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean acceptAccess(String cid, String reID) {
        ResultSet rs1 = dbconn.getData("select cid from Reservation where reID = " + reID);
        try {
            while (rs1.next()) {
                if (rs1.getString(1).equals(cid)) {
                    return true;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public void DeleteReservation(String reid) {
        String sql = "delete from Reservation where reID=" + reid;
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservation.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public String getEmail(String reid) {
        String sql = "select mail from Reservation where reid=" + reid;
        ResultSet rs = dbconn.getData(sql);
        try {
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int getTotalRe() {
        ResultSet rs = dbconn.getData("select count(*) from Reservation");
        int total = 0;
        try {
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return total;
    }

    public double getIncome() {
        ResultSet rs = dbconn.getData("select sum(price) from ReservationDetail");
        double income = 0;
        try {
            while (rs.next()) {
                income = rs.getDouble(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return income;
    }

    public ArrayList<Reservation> getSubmitted() {
        ArrayList<Reservation> list = new ArrayList<>();
        ResultSet rs = dbconn.getData("select reID,Convert(varchar(10),date,103) as 'DD/MM/YYYY', totalprice,phone,mail,status from Reservation where status = 1\n" +
"order by date");
        try {
            while (rs.next()) {
                list.add(new Reservation(rs.getString(1), rs.getString(2), rs.getFloat(3), rs.getString(4), rs.getString(5), rs.getInt(6)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }


    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOReservation dao = new DAOReservation(dbconn);
        ArrayList<Reservation> list = dao.getSubmitted();
        for (Reservation re : list) {
            System.out.println(re);
        }
        
    }
}
