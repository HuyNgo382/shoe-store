/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package huy.dev;

import huy.dev.data.DatabaseDao;
import huy.dev.data.model.Category;
import huy.dev.data.model.Product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Asus
 */
public class SearchServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String key = request.getParameter("key");
        List<Product> productList = DatabaseDao.getInstance().getProductDao().findByName(key);
        
        List<Category> categoryList = DatabaseDao.getInstance().getCategoryDao().findAll();
        
        request.setAttribute("categoryList", categoryList);
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("search.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
