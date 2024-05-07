/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hbtth
 */
public class homeController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet homeController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet homeController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        ProductDAO db = new ProductDAO();
        List<Product> list = db.getAllProduct();
        request.setAttribute("list", list);
        request.getRequestDispatcher("view/home.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
            int filter = Integer.parseInt(request.getParameter("filter"));
            ProductDAO db = new ProductDAO();
            List<Product> list = db.getAllProduct();
            List<Product> l = new ArrayList();
            switch (filter) {
                case 0: {
                    l = list;
                    break;
                }
                case 1: {
                    l = list.stream().filter(i -> (i.getSalePrice() < 2e6)).toList();
                    break;
                }
                case 2: {
                    l = list.stream().filter(i -> (i.getSalePrice() >= 2e6 && i.getSalePrice() < 4e6)).toList();
                    break;
                }
                case 3: {
                    l = list.stream().filter(i -> (i.getSalePrice() >= 4e6 && i.getSalePrice() < 7e6)).toList();
                    break;
                }
                case 4: {
                    l = list.stream().filter(i -> (i.getSalePrice() >= 7e6 && i.getSalePrice() < 13e6)).toList();
                    break;
                }
                case 5: {
                    l = list.stream().filter(i->(i.getSalePrice() >= 13e6 && i.getSalePrice() < 20e6 )).toList();
                    break;
                }
                case 6: {
                    l = list.stream().filter(i -> (i.getSalePrice() >= 20e6 )).toList();
                    break;
                }
            }
            request.setAttribute("list", l);
            request.setAttribute("choice", filter);
            request.getRequestDispatcher("view/home.jsp").forward(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
