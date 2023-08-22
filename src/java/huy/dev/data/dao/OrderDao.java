package huy.dev.data.dao;

import java.util.List;

import huy.dev.data.model.Order;

public interface OrderDao {

    public boolean insert(Order order);

    public boolean update(Order order);

    public boolean delete(int orderId);

    public Order find(int orderId);

    public List<Order> findAll();

    public List<Order> findByStatus(String status);

    public int countOrderByDay(String date);
}
