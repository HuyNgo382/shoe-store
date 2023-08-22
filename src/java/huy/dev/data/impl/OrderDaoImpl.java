package huy.dev.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import huy.dev.data.dao.OrderDao;
import huy.dev.data.driver.MySQLDriver;
import huy.dev.data.model.Order;
import java.sql.SQLException;

public class OrderDaoImpl implements OrderDao {

    private final Connection conn;

    public OrderDaoImpl() {
        conn = MySQLDriver.getInstance().getConnection();
    }

    @Override
    public boolean insert(Order order) {
        // TODO Auto-generated method stub
        String sql = "INSERT INTO ORDERS(ID, CODE, STATUS, USER_ID) VALUES(NULL, ?, ?, ?)";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.getCode());
            stmt.setString(2, order.getStatus());
            stmt.setInt(3, order.getUserId());

            return stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(Order order) {
        // TODO Auto-generated method stub
        String sql = "UPDATE ORDERS SET CODE=?, STATUS=?, USER_ID=? WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.getCode());
            stmt.setString(2, order.getStatus());
            stmt.setInt(3, order.getUserId());
            stmt.setInt(4, order.getId());

            return stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        // TODO Auto-generated method stub
        String sql = "DELETE FROM ORDERS WHERE ID=?";
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
    public Order find(int id) {
        // TODO Auto-generated method stub
        String sql = "SELECT * FROM ORDERS WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String code = rs.getString("code");
                String status = rs.getString("status");
                int userId = rs.getInt("user_Id");

                return new Order(id, code, status, userId);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Order> findAll() {
        // TODO Auto-generated method stub
        List<Order> orderList = new ArrayList<>();
        String sql = "SELECT * FROM ORDERS";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                String status = rs.getString("status");
                int userId = rs.getInt("user_Id");

                orderList.add(new Order(id, code, status, userId));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return orderList;
    }

    @Override
    public List<Order> findByStatus(String status) {
        List<Order> orderList = new ArrayList<>();
        String sql = "SELECT * FROM ORDERS WHERE STATUS=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, status);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                int userId = rs.getInt("user_Id");

                orderList.add(new Order(id, code, status, userId));
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return orderList;
    }


    @Override
    public int countOrderByDay(String date) {
        int count = 0;
        String sql = "SELECT COUNT(*) AS count FROM orders where date(created_at)=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, date);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                count = rs.getInt("count");
            }
        } catch (SQLException ex) {
           
        }
        return count;
    }

}
