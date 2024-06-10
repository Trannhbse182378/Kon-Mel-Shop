package DAO;

import DTO.Account;
import DTO.Stuff;
import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    // Phương thức để kiểm tra đăng nhập của người dùng
    public Account checkLogin(String userId, int password) throws SQLException {
        try {
            con = DBUtils.getConnection();
            String sql = "SELECT userId, password, fullName, role FROM tbl_User WHERE userId = ? AND password = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, userId);
            pst.setInt(2, password);
            rs = pst.executeQuery();

            if (rs.next()) {
                String userID = rs.getString("userId");
                int pw = rs.getInt("password");
                String fullName = rs.getString("fullName");
                int role = rs.getInt("role");

                return new Account(userID, pw, fullName, role);
            }

        } finally {
            closeConnection();
        }

        return null;
    }

    // Phương thức để thêm người dùng mới
    public boolean registerUser(String userId, int password, String fullName, int role) throws SQLException {
        try {
            con = DBUtils.getConnection();
            String sql = "INSERT INTO tbl_User (userId, password, fullName, role) VALUES (?, ?, ?, ?)";
            pst = con.prepareStatement(sql);
            pst.setString(1, userId);
            pst.setInt(2, password);
            pst.setString(3, fullName);
            pst.setInt(4, role);

            int rowsAffected = pst.executeUpdate();
            return rowsAffected > 0;
        } finally {
            closeConnection();
        }
    }

    // Phương thức để đóng kết nối
    private void closeConnection() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    // Phương thức để kiểm tra xem một email đã tồn tại trong cơ sở dữ liệu hay chưa

    public boolean isEmailExists(String email) throws SQLException {
        try {
            con = DBUtils.getConnection();
            String sql = "SELECT COUNT(*) AS count FROM tbl_User WHERE userId = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, email);
            rs = pst.executeQuery();

            if (rs.next()) {
                int count = rs.getInt("count");
                return count > 0; // Trả về true nếu email đã tồn tại, ngược lại trả về false
            }
        } finally {
            closeConnection();
        }

        return false; // Trả về false nếu có lỗi xảy ra hoặc không tìm thấy email trong cơ sở dữ liệu
    }

    public List<Account> searchUserByName(String searchValue) throws SQLException {
        List<Account> list = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            String sql = "SELECT userId, fullName, password, role\n"
                    + "FROM tbl_User\n"
                    + "WHERE userId LIKE ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, "%" + searchValue + "%");
            rs = pst.executeQuery();

            while (rs.next()) {
                String userId = rs.getString("userId");
                String fullName = rs.getString("fullName");
                int password = rs.getInt("password");
                int role = rs.getInt("role");

                list.add(new Account(userId, password, fullName, role));
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

    public List<Account> getAllUser() throws SQLException {
        List<Account> list = new ArrayList<>();
        //step 1: create connection
        try {
            con = DBUtils.getConnection();
            String sql = "select userId, password, fullName, role from tbl_User";
            //step2: create request to db
            pst = con.prepareStatement(sql);
            //step3: create result set 
            rs = pst.executeQuery();

            while (rs.next()) {
                String userId = rs.getString("userId");
                String fullName = rs.getString("fullName");
                int password = rs.getInt("password");
                int role = rs.getInt("role");

                list.add(new Account(userId, password, fullName, role));
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

    public boolean deleteUser(String userId) throws SQLException {
        boolean result = false;
        try {
            con = DBUtils.getConnection();
            String sql = "delete from tbl_User\n"
                    + "where userId = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, userId);
            int rs = pst.executeUpdate();
            if (rs > 0) {
                result = true;
            }
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        }

        return result;
    }

}
