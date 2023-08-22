/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin.order;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import huy.dev.admin.BaseAdminServlet;
import huy.dev.data.DatabaseDao;
import huy.dev.data.model.Order;

/**
 *
 * @author USER
 */
public class EditOrderServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        Order order = DatabaseDao.getInstance().getOrderDao().find(orderId);

        request.setAttribute("order", order);
        request.getRequestDispatcher("admin/order/edit.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        Order order = DatabaseDao.getInstance().getOrderDao().find(orderId);

        order.setStatus(request.getParameter("status"));

        DatabaseDao.getInstance().getOrderDao().update(order);
        response.sendRedirect("IndexOrderServlet");
    }
}
