/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin.order;

import huy.dev.admin.BaseAdminServlet;
import huy.dev.data.DatabaseDao;
import huy.dev.data.dao.UserDao;
import huy.dev.data.model.Order;
import huy.dev.data.model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author USER
 */
public class CreateOrderServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        List<User> userList = userDao.findAll();

        request.setAttribute("userList", userList);
        request.getRequestDispatcher("admin/order/create.jsp").include(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String code = request.getParameter("code");
        String status = request.getParameter("status");
        int userId = Integer.parseInt(request.getParameter("userId"));

        Order order = new Order(code, status, userId);

        DatabaseDao.getInstance().getOrderDao().insert(order);
        response.sendRedirect("IndexOrderServlet");
    }

}

