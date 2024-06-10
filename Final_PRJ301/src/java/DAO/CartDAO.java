/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Cart;
import Utils.DBUtils;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ptd
 */
public class CartDAO implements Serializable {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    public boolean insertCart(Cart cart) throws SQLException {
        boolean result = false;

        try {
            con = DBUtils.getConnection();
            String sql = "insert into tbl_Cart( userId, stuffId, image, stuffName, price, quantity)\n"
                    + "values (?, ?, ?, ?, ?, ?)";

            pst = con.prepareStatement(sql);
            pst.setString(1, cart.getUserId());
            pst.setString(2, cart.getStuffId());
            pst.setString(3, cart.getImage());
            pst.setString(4, cart.getStuffName());
            pst.setFloat(5, cart.getPrice());
            pst.setInt(6, cart.getQuantity());

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

    public boolean removeItemToCart(String userId, String stuffId) throws SQLException {
        boolean result = false;

        try {
            con = DBUtils.getConnection();
            String sql = "delete from tbl_Cart where userId = ? AND stuffID = ?";

            pst = con.prepareStatement(sql);
            pst.setString(1, userId);
            pst.setString(2, stuffId);
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

    public boolean setCartQuantity(Cart cart) throws SQLException {
        boolean result = false;

        try {
            con = DBUtils.getConnection();
            String sql = "update tbl_Cart set quantity = ? where cartId = ?";

            pst = con.prepareStatement(sql);
            pst.setInt(1, cart.getQuantity());
            pst.setInt(2, cart.getCartId());

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

    public List<Cart> getCarts(String userID) throws SQLException {
        List<Cart> list = new ArrayList<>();

        try {
            con = DBUtils.getConnection();
            String sql = "select * from tbl_Cart where userId = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, userID);

            rs = pst.executeQuery();

            while (rs.next()) {
                int cartId = rs.getInt("cartId");
                String userId = rs.getString("userId");
                String stuffId = rs.getString("stuffId");
                String image = rs.getString("image");
                String stuffName = rs.getString("stuffName");
                float price = rs.getFloat("price");
                int quantity = rs.getInt("quantity");

                list.add(new Cart(cartId, userId, stuffId, image, stuffName, price, quantity));
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

    public Cart getCart(String userID, String stuffID) throws SQLException {
        try {
            con = DBUtils.getConnection();
            String sql = "select * from tbl_Cart where userId = ? and stuffId = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, userID);
            pst.setString(2, stuffID);
            rs = pst.executeQuery();

            if (rs.next()) {
                int cartId = rs.getInt("cartId");
                String userId = rs.getString("userId");
                String stuffId = rs.getString("stuffId");
                String image = rs.getString("image");
                String stuffName = rs.getString("stuffName");
                float price = rs.getFloat("price");
                int quantity = rs.getInt("quantity");

                return new Cart(cartId, userId, stuffId, image, stuffName, price, quantity);
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
        return null;
    }

    public Cart getCartById(int cartID) throws SQLException {
        try {
            con = DBUtils.getConnection();
            String sql = "select * from tbl_Cart where cartId = ?";
            pst = con.prepareStatement(sql);
            pst.setInt(1, cartID);
            rs = pst.executeQuery();

            if (rs.next()) {
                int cartId = rs.getInt("cartId");
                String userId = rs.getString("userId");
                String stuffId = rs.getString("stuffId");
                String image = rs.getString("image");
                String stuffName = rs.getString("stuffName");
                float price = rs.getFloat("price");
                int quantity = rs.getInt("quantity");

                return new Cart(cartId, userId, stuffId, image, stuffName, price, quantity);
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
        return null;
    }
    
    public boolean deleteCart(String userId) throws SQLException {
        boolean result = false;
        try {
            con = DBUtils.getConnection();
            String sql = "delete from tbl_Cart\n"
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
