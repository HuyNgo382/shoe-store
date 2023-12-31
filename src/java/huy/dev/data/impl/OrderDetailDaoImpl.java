package huy.dev.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import huy.dev.data.dao.OrderDetailDao;
import huy.dev.data.driver.MySQLDriver;
import huy.dev.data.model.OrderDetail;

public class OrderDetailDaoImpl implements OrderDetailDao {

    private Connection conn;

    public OrderDetailDaoImpl() {
        conn = MySQLDriver.getInstance().getConnection();
    }

    @Override
    public boolean insert(OrderDetail orderDetail) {
        // TODO Auto-generated method stub
        String sql = "INSERT INTO ORDER_DETAILS(ID, ORDER_ID, PRODUCT_ID, QUANTITY, PRICE) VALUES(NULL, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetail.getOrderId());
            stmt.setInt(2, orderDetail.getProductId());
            stmt.setInt(3, orderDetail.getQuantity());
            stmt.setDouble(4, orderDetail.getPrice());

            return stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(OrderDetail orderDetail) {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public boolean delete(int id) {
        // TODO Auto-generated method stub
        String sql = "DELETE FROM ORDER_DETAILS WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);

            return stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public OrderDetail find(int id) {
        // TODO Auto-generated method stub
        String sql = "SELECT * FROM ORDER_DETAILS WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int orderId = rs.getInt("order_Id");
                int productId = rs.getInt("product_Id");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");

                return new OrderDetail(orderId, productId, quantity, price);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<OrderDetail> findAll() {
        // TODO Auto-generated method stub
        List<OrderDetail> orderDetailList = new ArrayList<>();
        String sql = "SELECT * FROM ORDER_DETAILS";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int orderId = rs.getInt("order_Id");
                int productId = rs.getInt("product_Id");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");

                orderDetailList.add(new OrderDetail(id, orderId, productId, quantity, price));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return orderDetailList;
    }

    @Override
    public List<OrderDetail> findByOrder(int orderId) {
        List<OrderDetail> orderDetailList = new ArrayList<>();
        String sql = "SELECT * FROM ORDER_DETAILS WHERE ORDER_ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int productId = rs.getInt("product_Id");
                int quantity = rs.getInt("quantity");
                double price = rs.getDouble("price");

                orderDetailList.add(new OrderDetail(id, orderId, productId, quantity, price));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return orderDetailList;

    }
}
