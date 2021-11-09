/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.SerCate;
import Entity.Service;
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
public class DAOService {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    DBConnect dbconn = null;

    /*
    Hiển thị các dịch vụ được phân trang (sắp xếp theo ngày cập nhật, được đánh số trang) + trình duyệt với hộp tìm kiếm dịch vụ, các loại dịch vụ, liên hệ / liên kết tĩnh;
- Thông tin dịch vụ được hiển thị bao gồm hình thu nhỏ, tiêu đề, thông tin ngắn gọn, giá gốc và giá ưu đãi;
- Người dùng được chuyển hướng đến thông tin chi tiết của dịch vụ khi họ nhấp vào dịch vụ
- Người dùng có thể chọn thêm dịch vụ vào giỏ hàng hoặc phản hồi về dịch vụ bằng cách nhấp vào nút Mua & Phản hồi của dịch vụ một cách phản hồi
     */
    public List<Service> getAllProduct() {
        List<Service> list = new ArrayList<>();
        String query = "select * from Service";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int getTotalService() {
        String sql = "select count(*) from Service";
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

    public List<Service> pagingService(int index) {
        List<Service> list = new ArrayList<>();
        String sql = "select * from Service\n"
                + "order by sID\n"
                + "offset ? rows fetch next 3 rows only";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 3);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6), rs.getString(7)));
            }

        } catch (Exception e) {

        }
        return list;
    }

    public List<Service> getServiceByCID(String cid) {
        List<Service> list = new ArrayList<>();
        String query = "select * from Service\n"
                + "where scID = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Service getServiceByCID1(String cid) {
        String query = "select * from Service\n"
                + "where sID = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Service(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
   

    public SerCate getSerCateByscID(String scID) {
        String query = "select * from SerCate\n"
                + "where scID = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, scID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new SerCate(rs.getString(1),
                        rs.getString(2));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Service> searchByName(String txtSearch) {
        List<Service> list = new ArrayList<>();
        String query = "select * from Service\n"
                + "where [sname] like ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Service> pagingProduct(int index) {
        List<Service> list = new ArrayList<>();
        String sql = "select * from Service\n"
                + "order by sID\n"
                + "offset ? rows fetch next 4 rows only";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 4);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6), rs.getString(7)));
            }

        } catch (Exception e) {

        }
        return list;
    }
    
    public int removeService(int sid) {
        int n = 0;
        String sql = "delete from Service where sID=?";
        try {
            
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, sid );
            rs = ps.executeQuery();
         } catch (Exception e) {

        }
        return n;
    }
    
    public List<SerCate> getAllCateSer() {
        List<SerCate> list = new ArrayList<>();
        String query = "select * from SerCate";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new SerCate(rs.getString(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void updateService(String sname, double sprice, String description, int maxquantity, String image, int sID) {
        try {
            String sql = "update Service set sname=?, sprice=?, description=?, "
                    + "maxquantity=?, ser_image=? where sID=?";
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(1, sname);
            ps.setDouble(2, sprice);
            ps.setString(3, description);
            ps.setInt(4, maxquantity);
            ps.setString(5, image);
            ps.setInt(6, sID);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void addService(String scID, String sname, double sprice, String description, int maxquantity, String image ) {
        try {
            String sql = "INSERT INTO Service " +
            "VALUES ('"+ sname +"', "
                       + Integer.parseInt(scID) +", "
                       + sprice +", "
                       +"'"+ description +"', "
                       + maxquantity + ", "
                       +"'"+image +"')";
        
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
           
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public static void main(String[] args) {
        DAOService dao = new DAOService();
        List<Service> list = dao.getAllProduct();
        List<Service> list1 = dao.searchByName("kham phoi");
        List<Service> list2 = dao.getServiceByCID("1");
        List<SerCate> listC = dao.getAllCateSer();
        List<Service> list4 = dao.searchByName("khám");
//        for (Service o : list4) {
//            System.out.println(o);
//        }
//        System.out.println(dao.getServiceByCID1("3"));
    for(Service o : list) {
        System.out.println(o);
    }
        dao.updateService("kham da lieu", 250, "kham da lieu", 20, "khamdalieu.jpg", 3);
        System.out.println(dao.getServiceByCID1("3"));
    }
}
