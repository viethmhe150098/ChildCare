/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Medicines;
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
public class DAOMedicine {

    Connection conn = null;
    DBConnect dbconn = null;

    public DAOMedicine(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public void Add(Medicines me) {
        String sql = "insert into medicine(meName, meQuantity, meImg, meDes, mePrice) values (?,?,?,?,?)";
        try {
            conn = dbconn.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, me.getMeName());
            ps.setInt(2, me.getMeQuantity());
            ps.setString(3, me.getMeImg());
            ps.setString(4, me.getMeDes());
            ps.setDouble(5, me.getMePrice());
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOMedicine.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public ArrayList<Medicines> displayMe() {
        ArrayList<Medicines> list = new ArrayList<>();
        ResultSet rs = dbconn.getData("select * from Medicine");
        try {
            while (rs.next()) {
                list.add(new Medicines(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(6), rs.getString(4), rs.getFloat(5)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOMedicine.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void UpdateMedicine(Medicines me) {
        String sql = "update medicine set meName=?, meDes=?,meImg=?,mePrice=?,meQuantity=? where meID=?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, me.getMeName());
            pre.setString(2, me.getMeDes());
            pre.setString(3, me.getMeImg());
            pre.setDouble(4, me.getMePrice());
            pre.setInt(5, me.getMeQuantity());
            pre.setInt(6, me.getMeID());
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOMedicine.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void changeStatus(int meid, int status) {
        String sql = "update medicine set status = ? where meID=?";
        PreparedStatement pre;
        try {
            pre = conn.prepareStatement(sql);
            pre.setInt(1, status);
            pre.setInt(2, meid);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOMedicine.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void DeleteMedicine(int meid) {
        String sqlDe = "delete from Medicine where meid="+meid;
        String sqlCheck ="select * from Prescription where meID="+meid;
        ResultSet rs = dbconn.getData(sqlCheck);
        try {
            if(rs.next()){
                changeStatus(meid, 0);
            }else{
                PreparedStatement pre = conn.prepareStatement(sqlDe);
                pre.setInt(1, meid);
                pre.executeUpdate();                
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOMedicine.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOMedicine d = new DAOMedicine(dbconn);
        ArrayList<Medicines> list = d.displayMe();
        d.UpdateMedicine(new Medicines(42, "cikan", 320, "https://firebasestorage.googleapis.com/v0/b/childcare-52082.appspot.com/o/vien-van-mach-cikan-anvy-4x10.png?alt=media&token=470df417-04db-4c8f-99b1-8f1944525646",
                "day thuoc dieu tri da day", 45600));

    }
}
