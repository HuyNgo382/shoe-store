/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin.user;

import huy.dev.admin.BaseAdminServlet;
import huy.dev.data.DatabaseDao;
import huy.dev.data.dao.UserDao;
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
public class EditUserServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      int userId = Integer.parseInt(request.getParameter("userId"));
        User user = DatabaseDao.getInstance().getUserDao().find(userId);
        List<User> userList = DatabaseDao.getInstance().getUserDao().findAll();
        

        request.setAttribute("user", user);
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("admin/user/edit.jsp").include(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         int userId = Integer.parseInt(request.getParameter("userId"));
        User user = DatabaseDao.getInstance().getUserDao().find(userId);

        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        user.setRole(request.getParameter("role"));

        DatabaseDao.getInstance().getUserDao().update(user);
        response.sendRedirect("IndexUserServlet");
    }

}
