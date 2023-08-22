/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin;

import huy.dev.data.Database;
import huy.dev.data.DatabaseDao;
import huy.dev.data.model.Order;
import huy.dev.util.Constants;
import huy.dev.util.GetDateTime;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author USER
 */
public class DashBoardServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double totalProduct = DatabaseDao.getInstance().getProductDao().findAll().size();
        double totalUser = DatabaseDao.getInstance().getUserDao().findAll().size();
        double totalOrder = DatabaseDao.getInstance().getOrderDao().findAll().size();
        
        List<Order> orderList = Database.getInstance().getOrderDao().findAll();
        double earning = earning(orderList);
        
        List<Order> pendingOrderList = DatabaseDao.getInstance().getOrderDao().findByStatus(Order.PENDING_STATUS);
           //Chart
        List<String> dateList = GetDateTime.getDates(Constants.NUMBER_DAY);
        request.setAttribute("dateList", dateList);
        
         List<Integer> countEachDay = new ArrayList<>();
        for(int i = 0; i < Constants.NUMBER_DAY; i++){
            countEachDay.add(DatabaseDao.getInstance().getOrderDao().countOrderByDay(dateList.get(i)));
        }
        request.setAttribute("countEachDay", countEachDay);
        
        request.setAttribute("totalProduct", totalProduct);
        request.setAttribute("totalUser", totalUser);
        request.setAttribute("totalOrder", totalOrder);
        request.setAttribute("earning", earning);
        request.setAttribute("pending", pendingOrderList);
        
        request.getRequestDispatcher("admin/dashboard.jsp").include(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    public double earning (List<Order> orderList) {
        double earn = 0;
        for (Order order : orderList) {
            if(order.getStatus().equals(Order.FINISH_STATUS)){
                earn += order.total();
            }
        }
        return earn;
    }

}
