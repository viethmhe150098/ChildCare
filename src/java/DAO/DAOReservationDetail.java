/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Reservation;
import Entity.ReservationDetail;
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
public class DAOReservationDetail {

     Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;

    public DAOReservationDetail(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public DAOReservationDetail() {
        
    }

    public ResultSet searchByReID(String reID) {
        ResultSet rs = dbconn.getData("select b.sname,a.quantity,a.price from ReservationDetail as a inner join Service as b on a.sID=b.sID where a.reID=" + reID);
        return rs;
    }
    public void delete(String reID){
        String sql = "delete from ReservationDetail where reid ="+reID; 
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservationDetail.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
     public void addReservationDetail(String sID, String reID,String quantity,String price) {

        String query = "insert into ReservationDetail(sID,reID,quantity,price)\n"
                + "                 values(?,?,?,?)";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sID);
            ps.setString(2, reID);
            ps.setString(3, quantity);
            ps.setString(4, price);
      
          

           

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
         DBConnect dbconn = new DBConnect();
         DAOReservationDetail dao = new DAOReservationDetail();
         dao.addReservationDetail("1","4","10","15");
    }
  
}
