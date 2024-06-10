package DAO;

import DTO.Account;
import DTO.Cart;
import DTO.Order;
import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    public boolean insertOrder(Order order) throws SQLException, ClassNotFoundException {
        boolean result = false;

        try {
            con = DBUtils.getConnection();
            // Cập nhật câu lệnh SQL để sử dụng tham số cho trường date
            String sql = "INSERT INTO tbl_Order(userId, address, phone, total) VALUES(?,?,?,?)";
            pst = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, order.getUserId());
            pst.setString(2, order.getAddress());
            pst.setString(3, order.getPhone());
            pst.setFloat(4, order.getTotal());

            pst.executeUpdate();
            rs = pst.getGeneratedKeys();

            result = true;

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        }

        return result; // Trả về orderId để có thể sử dụng sau này nếu cần
    }

    public List<Order> getAllOrder() throws SQLException {
        List<Order> list = new ArrayList<>();
        //step 1: create connection
        try {
            con = DBUtils.getConnection();
            String sql = "select * from tbl_Order";
            //step2: create request to db
            pst = con.prepareStatement(sql);
            //step3: create result set 
            rs = pst.executeQuery();

            while (rs.next()) {
                int orderId = rs.getInt("orderId");
                String userId = rs.getString("userId");
                String address = rs.getString("address");
                String phone = rs.getString("phone");
                float total = rs.getFloat("total");

                list.add(new Order(orderId, userId, address, phone, total));
            }

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return list;
    }
    
    public List<Order> searchOrderByOrderId(String searchValue) throws SQLException {
        List<Order> list = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            String sql = "SELECT *\n"
                    + "FROM tbl_Order\n"
                    + "WHERE orderId LIKE ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, "%" + searchValue + "%");
            rs = pst.executeQuery();

            while (rs.next()) {
                int orderId = rs.getInt("orderId");
                String userId = rs.getString("userId");
                String address = rs.getString("address");
                String phone = rs.getString("phone");
                float total = rs.getFloat("total");

                list.add(new Order(orderId, userId, address, phone, total));
            }

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return list;
    }
}
