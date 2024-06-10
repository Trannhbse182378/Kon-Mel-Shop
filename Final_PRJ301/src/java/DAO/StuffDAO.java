/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Stuff;
import Utils.DBUtils;
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
public class StuffDAO {

    //step 1
    Connection con = null;
    //step 2 
    PreparedStatement pst = null;
    //step 3
    ResultSet rs = null;

    public List<Stuff> getAllStuff() throws SQLException {
        List<Stuff> list = new ArrayList<>();
        //step 1: create connection
        try {
            con = DBUtils.getConnection();
            String sql = "select stuffId, description, price, stuffName, yearOfProduction, quantity, notSale, image\n"
                    + "from tbl_Stuff where notSale = 0";
            //step2: create request to db
            pst = con.prepareStatement(sql);
            //step3: create result set 
            rs = pst.executeQuery();

            while (rs.next()) {
                String stuffId = rs.getString("stuffId");
                String description = rs.getString("description");
                float price = rs.getFloat("price");
                String stuffName = rs.getString("stuffName");
                int yearOfProduction = rs.getInt("yearOfProduction");
                int quantity = rs.getInt("quantity");
                boolean notSale = rs.getBoolean("notSale");
                String image = rs.getString("image");

                list.add(new Stuff(stuffId, description, price, stuffName, yearOfProduction, quantity, notSale, image));
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

    public List<Stuff> searchStuffByIdOrName(String searchValue) throws SQLException {
        List<Stuff> list = new ArrayList<>();
        try {
            //crate connection
            con = DBUtils.getConnection();
            String sql = "select stuffId, description, price, stuffName, yearOfProduction, quantity, notSale, image\n"
                    + "from tbl_Stuff\n"
                    + "where stuffName like ? or stuffId like ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, "%" + searchValue + "%");
            pst.setString(2, "%" + searchValue + "%");
            rs = pst.executeQuery();

            while (rs.next()) {
                String stuffId = rs.getString("stuffId");
                String description = rs.getString("description");
                float price = rs.getFloat("price");
                String stuffName = rs.getString("stuffName");
                int yearOfProduction = rs.getInt("yearOfProduction");
                int quantity = rs.getInt("quantity");
                boolean notSale = rs.getBoolean("notSale");
                String image = rs.getString("image");

                list.add(new Stuff(stuffId, description, price, stuffName, yearOfProduction, quantity, notSale, image));
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

    public boolean addStuff(Stuff mobile) throws SQLException {
        boolean result = false;
        try {
            con = DBUtils.getConnection();
            String sql = "insert into tbl_Stuff(description,image,stuffId,stuffName,notSale,price,quantity,yearOfProduction)\n"
                    + "values(?,?,?,?,?,?,?,?)";

            pst = con.prepareStatement(sql);
            pst.setString(1, mobile.getDescription());
            pst.setString(2, mobile.getImage());
            pst.setString(3, mobile.getStuffId());
            pst.setString(4, mobile.getStuffName());
            pst.setBoolean(5, mobile.isNotSale());
            pst.setFloat(6, mobile.getPrice());
            pst.setInt(7, mobile.getQuantity());
            pst.setInt(8, mobile.getYearOfProduction());

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

    public boolean deleteStuff(String stuffId) throws SQLException {
        boolean result = false;
        try {
            con = DBUtils.getConnection();
            String sql = "delete from tbl_Stuff\n"
                    + "where stuffId = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, stuffId);
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

    public boolean updateStuff(Stuff mobile) throws SQLException {
        boolean result = false;
        try {
            con = DBUtils.getConnection();
            String sql = "update tbl_Stuff\n"
                    + "set description = ?, price = ?, quantity = ?, notSale = ?\n"
                    + "where stuffId = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, mobile.getDescription());
            pst.setFloat(2, mobile.getPrice());
            pst.setInt(3, mobile.getQuantity());
            pst.setBoolean(4, mobile.isNotSale());
            pst.setString(5, mobile.getStuffId());

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

    public Stuff getStuffById(String stuffId) throws SQLException {
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            con = DBUtils.getConnection();
            String sql = "SELECT stuffId, description, price, stuffName, yearOfProduction, quantity, notSale, image\n"
                    + "FROM tbl_Stuff\n"
                    + "WHERE stuffId = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, stuffId);
            rs = pst.executeQuery();

            if (rs.next()) {
                String description = rs.getString("description");
                float price = rs.getFloat("price");
                String stuffName = rs.getString("stuffName");
                int yearOfProduction = rs.getInt("yearOfProduction");
                int quantity = rs.getInt("quantity");
                boolean notSale = rs.getBoolean("notSale");
                String image = rs.getString("image");

                return new Stuff(stuffId, description, price, stuffName, yearOfProduction, quantity, notSale, image);
            }
        } finally {
            // Close resources in finally block to ensure they are always closed
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
        return null; // Return null if mobile with given ID is not found
    }

    public List<Stuff> searchStuffByName(String searchValue) throws SQLException {
        List<Stuff> list = new ArrayList<>();
        try {
            con = DBUtils.getConnection();
            String sql = "SELECT stuffId, description, price, stuffName, yearOfProduction, quantity, notSale, image\n"
                    + "FROM tbl_Stuff\n"
                    + "WHERE stuffName LIKE ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, "%" + searchValue + "%");
            rs = pst.executeQuery();

            while (rs.next()) {
                String stuffId = rs.getString("stuffId");
                String description = rs.getString("description");
                float price = rs.getFloat("price");
                String stuffName = rs.getString("stuffName");
                int yearOfProduction = rs.getInt("yearOfProduction");
                int quantity = rs.getInt("quantity");
                boolean notSale = rs.getBoolean("notSale");
                String image = rs.getString("image");

                list.add(new Stuff(stuffId, description, price, stuffName, yearOfProduction, quantity, notSale, image));
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

    public boolean updateStuffQuantityAfterPurchase(String userId) throws SQLException {
        boolean result = false;
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            con = DBUtils.getConnection();
            // Lấy tất cả các stuffId và quantity trong tbl_Cart của userId hiện tại
            String cartSql = "SELECT stuffId, quantity FROM tbl_Cart WHERE userId = ?";
            pst = con.prepareStatement(cartSql);
            pst.setString(1, userId);
            rs = pst.executeQuery();

            while (rs.next()) {
                String stuffId = rs.getString("stuffId");
                int quantityBought = rs.getInt("quantity");

                // Cập nhật quantity trong tbl_Stuff
                String stuffSql = "UPDATE tbl_Stuff SET quantity = quantity - ? WHERE stuffId = ?";
                try (PreparedStatement stuffPst = con.prepareStatement(stuffSql)) {
                    stuffPst.setInt(1, quantityBought);
                    stuffPst.setString(2, stuffId);
                    stuffPst.executeUpdate();
                }
                result = true;
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
        return result;
    }

}
