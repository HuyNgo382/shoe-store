/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev.admin.category;

import huy.dev.admin.BaseAdminServlet;
import huy.dev.data.DatabaseDao;
import huy.dev.data.model.Category;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
public class EditCategoryServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Category category = DatabaseDao.getInstance().getCategoryDao().find(categoryId);
        
        request.setAttribute("category", category);
        request.getRequestDispatcher("admin/category/edit.jsp").include(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Category category = DatabaseDao.getInstance().getCategoryDao().find(categoryId);
        
        category.setName(request.getParameter("name"));
        category.setImage(request.getParameter("image"));
        
        DatabaseDao.getInstance().getCategoryDao().update(category);
        response.sendRedirect("IndexCategoryServlet");
    }

}