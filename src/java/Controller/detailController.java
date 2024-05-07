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
public class detailController extends HttpServlet {
   
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
            out.println("<title>Servlet detailController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet detailController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ProductDAO db = new ProductDAO();
        Product p = db.getProductByID(id);
        request.setAttribute("product", p);
        request.getRequestDispatcher("view/detail.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         Cookie []cookie = request.getCookies();
        String idProduct = request.getParameter("id");
        String color = request.getParameter("color"); // color
        int numberOfProduct = 1;//
        ProductDAO db = new ProductDAO();
        List<Product> listProduct = db.getAllProduct();
        String txtItemOnCart = null;
        if(cookie != null){
            for(Cookie i : cookie){
                if(i.getName().equals("cart")){
                    txtItemOnCart = i.getValue();
                    i.setMaxAge(0);
                    response.addCookie(i);
                }
            }
        }
        String newItem = idProduct+":"+numberOfProduct+":"+color;
        if(txtItemOnCart!= null){
            txtItemOnCart = txtItemOnCart + newItem +"!";
        }else{
            txtItemOnCart = newItem +"!";
        }
        Cart cart = new Cart(txtItemOnCart, listProduct);
        StringBuilder sb = new StringBuilder();// 
        for(Item i : cart.getAllItemfromCart()){
            sb.append(i.getProduct().getIdProduct()).append(":").append(i.getTotalProduct()).append(":").append(i.getColor()).append("!");
        }
        Cookie newCookie = new Cookie("cart",sb.toString());
        newCookie.setMaxAge(60*60*24*10);
        response.addCookie(newCookie);
        response.sendRedirect("cart"); // goi doGet
    }

    /** 
     * 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
