/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.CheckOutDAO;
import DAO.ProductDAO;
import Model.Cart;
import Model.Product;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author hbtth
 */
public class cartController extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cartController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cartController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Cookie []cookie = request.getCookies();
        String txtItemOnCart = null;
        if(cookie != null){
            for(Cookie i : cookie){
                if(i.getName().equals("cart")){
                    txtItemOnCart = i.getValue();
                }
            }
        }
        ProductDAO db = new ProductDAO();
        List<Product> listProduct = db.getAllProduct();
        Cart cart = new Cart(txtItemOnCart,listProduct);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("view/cart.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Cookie[] cookie = request.getCookies();
        HttpSession session = request.getSession();
        ProductDAO db = new ProductDAO();
        CheckOutDAO dbc = new CheckOutDAO();
        List<Product> list = db.getAllProduct();
        String txtCartOnCookie = null;
        if (cookie != null) {
            for (Cookie i : cookie) {
                if (i.getName().equals("cart")) {
                    txtCartOnCookie = i.getValue();
                    i.setMaxAge(0);
                    response.addCookie(i);
                }
            }
        }
        Cart cart = new Cart(txtCartOnCookie, list);
        User user = (User) session.getAttribute("User");
        dbc.checkOutAllOfProduct(cart,user);
        response.sendRedirect("cart");
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
