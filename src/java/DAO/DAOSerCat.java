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
