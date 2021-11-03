/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Presciption;
import Model.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Viet
 */
public class DAOPrescription {
    Connection conn = null;
    DBConnect dbconn = null;

    public DAOPrescription(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }
    public void addPres(Presciption pres){
        String sql = "insert into Prescription(reID, meID, quantity) values(?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, pres.getReID());
            ps.setInt(2, pres.getMeID());
           
            ps.setInt(3, pres.getQuantity());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOPrescription.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOPrescription dao = new DAOPrescription(dbconn);
        dao.addPres(new Presciption("63733", 43, 2));
    }
}
