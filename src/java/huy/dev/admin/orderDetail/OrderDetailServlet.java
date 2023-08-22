/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin.orderDetail;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import huy.dev.admin.BaseAdminServlet;
import huy.dev.data.DatabaseDao;

import huy.dev.data.model.OrderDetail;

/**
 *
 * @author Acer
 */
public class OrderDetailServlet extends BaseAdminServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        List<OrderDetail> orderDetailList = DatabaseDao.getInstance().getOrderDetailDao().findByOrder(orderId);

        request.setAttribute("orderDetailList", orderDetailList);

        request.getRequestDispatcher("admin/orderDetail/show.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
