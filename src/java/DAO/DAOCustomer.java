/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Customer;
import Model.DBConnect;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DO THANH TRUNG
 */
public class DAOCustomer {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;

    public DAOCustomer(DBConnect dbconn) {
        conn = dbconn.con;
        this.dbconn = dbconn;
    }

    public DAOCustomer() {
    }

    public Customer loginCustomer(String username, String password) {
        try {
            String sql = "select * from Customer where username = ? and password = ?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();

            while (rs.next()) {
//                Customer cus = new Customer(rs.getString(1), rs.getString(2));
                Customer cus = new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11));
                return cus;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Customer> getAllCustomer1() {
        List<Customer> list = new ArrayList<>();
        String query = "select * from Customer";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Customer> searchByName(String txtSearch) {
        List<Customer> list = new ArrayList<>();
        String query = "select * from Customer\n"
                + "where [last_name] like ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getTotalCustomer() {
        String sql = "select count(*) from Customer";
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

    public void addCustomer(String firstname, String lastname, String gender, String email, String tel, String username, String password,
            String age, String status, String address, String role) {

        String query = "insert into Customer(first_name,last_name,gender,email,tel,username,[password],age,status,address,role)\n"
                + "                 values(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, gender);
            ps.setString(4, email);
            ps.setString(5, tel);
            ps.setString(6, username);
            ps.setString(7, password);
            ps.setString(8, age);
            ps.setString(9, status);
            ps.setString(10, address);
            ps.setString(11, role);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editCustomer(String firstname, String lastname, String gender, String email, String tel, String username, String password,
            String age, String status, String address, String role, String cid) {
        String query = "update Customer\n"
                + "set [first_name] = ?,\n"
                + "[last_name] = ?,\n"
                + "gender = ?,\n"
                + "email = ?,\n"
                + "[tel] = ?,\n"
                + "username = ?\n"
                + "password = ?\n"
                + "age = ?\n"
                + "status = ?\n"
                + "address = ?\n"
                + "role = ?\n"
                + "where cID = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, gender);
            ps.setString(4, email);
            ps.setString(5, tel);
            ps.setString(6, username);
            ps.setString(7, password);
            ps.setString(8, age);
            ps.setString(9, status);
            ps.setString(10, address);
            ps.setString(11, role);
            ps.setString(12, cid);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Customer getCustomerByID(String cid) {
        List<Customer> list = new ArrayList<>();
        String query = "select * from Customer where cID=?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Customer CheckExistCustomer(String username) {
        try {
            String sql = "select * from Customer where username = ?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();

            while (rs.next()) {
                Customer cus = new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11));
                return cus;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Customer> getAllCustomer() {
        ArrayList<Customer> arr = new ArrayList<Customer>();
        String sql = "select * from Customer";
        ResultSet rs = dbconn.getData(sql);
        try {
            while (rs.next()) {
                Customer cus = new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11));
                arr.add(cus);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }

    //
    public List<Customer> pagingCustomer(int index) {
        List<Customer> list = new ArrayList<>();
        String sql = "select * from Customer\n"
                + "order by cID\n"
                + "offset ? rows fetch next 3 rows only";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 3);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11)));
            }

        } catch (Exception e) {

        }
        return list;
    }

    public List<Customer> SearchCustomer(String name, String phone) {
        List<Customer> list = new ArrayList<>();
        String sql = "select * from Customer where username like ? or tel=?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + name + "%");
            ps.setString(2, phone);
//            ps.setString(2, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11)));
            }

        } catch (Exception e) {

        }
        return list;
    }

    public List<Customer> pagingSearchCustomer(int index, String name) {
        List<Customer> list = new ArrayList<>();
        String sql = "select * from Customer where username like ? "
                + "order by cID offset ? rows fetch next 3 rows only";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + name + "%");
//            ps.setString(2, phone);
            ps.setInt(3, (index - 1) * 3);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11)));
            }

        } catch (Exception e) {

        }
        return list;
    }

    public Customer getPass(String username) {
        try {
            String sql = "select password from Customer where username = ?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, username);

            rs = ps.executeQuery();

            while (rs.next()) {
//                Customer cus = new Customer(rs.getString(1), rs.getString(2));
                Customer cus = new Customer(rs.getString(1));
                return cus;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int insertCus(Customer cus) {
        int n = 0;
        try {
            String sql = "insert into Customer(first_name, last_name, gender, "
                    + "email, tel, username,password,age,address)\n"
                    + "values(?, ?, ?, ?, ?, ?, ?, ?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, cus.getFirst_name());
            ps.setString(2, cus.getLast_name());
            ps.setString(3, cus.getGender());
            ps.setString(4, cus.getEmail());
            ps.setString(5, cus.getTel());
            ps.setString(6, cus.getUsername());
            ps.setString(7, cus.getPassword());
            ps.setString(8, cus.getAge());

            ps.setString(9, cus.getAddress());
            n = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    //
    public List<Customer> getStatusActive(int status) {
        List<Customer> list = new ArrayList<>();
        String query = "select * from Customer where status = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, status);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    //
    public List<Customer> getStatusInactive(int status) {
        List<Customer> list = new ArrayList<>();
        String query = "select * from Customer where status = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, status);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void updateCustomer(Customer cus) {
        try {
            String sql = "update Customer set first_name=?, last_name=?, gender=?, "
                    + "email=?, tel=?, username=?, \n"
                    + "password=?, age=?, status=?, address=?, role=? where cID=?";
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(1, cus.getFirst_name());
            ps.setString(2, cus.getLast_name());
            ps.setString(3, cus.getGender());
            ps.setString(4, cus.getEmail());
            ps.setString(5, cus.getTel());
            ps.setString(6, cus.getUsername());
            ps.setString(7, cus.getPassword());
            ps.setString(8, cus.getAge());
            ps.setString(9, cus.getStatus());
            ps.setString(10, cus.getAddress());
            ps.setInt(11, cus.getRole());
            ps.setInt(12, cus.getcID());
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateCustomer1(String fname, String lname, String gender, String email, String tel,
             String username, String password, String age, String address, int cID) {
        try {
            String sql = "update Customer set first_name=?, last_name=?, gender=?, "
                    + "email=?, tel=?, username=?, \n"
                    + "password=?, age=?, address=? where cID=?";
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, gender);
            ps.setString(4, email);
            ps.setString(5, tel);
            ps.setString(6, username);
            ps.setString(7, password);
            ps.setString(8, age);
            ps.setString(9, address);
            ps.setInt(10, cID);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Customer getCustomerBycID(String cID) {
        String sql = "select * from Customer where cID = ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, cID);
            rs = ps.executeQuery();

            while (rs.next()) {
                Customer cus = new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(12), rs.getString(10), rs.getInt(11));
                return cus;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean getCustomerByUser(String user) {
        String sql = "select username from Customer where username = ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            rs = ps.executeQuery();

            while (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public int getTotalCus() {
        ResultSet rs = dbconn.getData("select count(*) from Customer");
        int total = 0;
        try {
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return total;
    }

    public void resetPass(String pass, String user) {
        
            String sql = "update Customer set password ='"+pass+"' where username='"+user+"'" ;
            try {
                conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
//            ps.setString(1, user);
//            rs = ps.executeQuery();
//                conn = dbconn.getConnection();
//                PreparedStatement ps = conn.prepareStatement(sql);
//                ps.setString(1, pass);
//                ps.setString(2, user);
                ps.executeUpdate();
            } catch (Exception ex) {
                Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
            }
         
    }

    public static void main(String[] args) {
        DBConnect dbconn = new DBConnect();
        DAOCustomer dao = new DAOCustomer(dbconn);

//        List<Customer> list = dao.pagingCustomer(1);
//        System.out.println(list);
        System.out.println(dao.getAllCustomer1());
    }
}
