/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.ProductDAO;
import Model.Cart;
import Model.Item;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author hbtth
 */
public class processOnCart extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int idProduct = Integer.parseInt(request.getParameter("id"));
        int val = Integer.parseInt(request.getParameter("val"));
        ProductDAO db = new ProductDAO();
        List<Product> list = db.getAllProduct();
        Cookie[] cookie = request.getCookies();
        String txtItemOnCart = null;
        if (cookie != null) {
            for (Cookie i : cookie) {
                if (i.getName().equals("cart")) {
                    txtItemOnCart = i.getValue();
                    i.setMaxAge(0);// xoa cookie
                    response.addCookie(i);// xoa cookie
                }
            }
        }
        Cart cart = new Cart(txtItemOnCart, list);
        cart.setQuantityItem(idProduct, val);
        StringBuilder sb = new StringBuilder();
        for (Item i : cart.getAllItemfromCart()) {
            sb.append(i.getProduct().getIdProduct()).append(":").append(i.getTotalProduct()).append(":").append(i.getColor()).append("!");
        }
        Cookie newCookie = new Cookie("cart", sb.toString());
        newCookie.setMaxAge(60 * 60 * 24 * 10);
        response.addCookie(newCookie);
        response.sendRedirect("cart");
        }
    } 


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
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
