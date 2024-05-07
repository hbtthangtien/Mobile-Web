/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Category;
import Model.Product;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hbtth
 */
public class ProductDAO extends dbConfig {

    public ProductDAO() {
        super();
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList();
        String sql = "SELECT * from Product";
        CategoryDAO db = new CategoryDAO();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int idProduct = rs.getInt(1);
                String nameProduct = rs.getString(2) ;
                int primePrice = rs.getInt(3), salePrice = rs.getInt(4);
                int quantity = rs.getInt(5);
                String brand = rs.getString(6), screen_size = rs.getString(7), screen_technology = rs.getString(8),
                        rear_camera = rs.getString(9), front_camera = rs.getString(10);
                String chipset = rs.getString(11), ram_capacit = rs.getString(12), internal_storage = rs.getString(13),
                        pin = rs.getString(14), sim_card = rs.getString(15), os = rs.getString(16);
                String screen_resolution = rs.getString(17), screen_features = rs.getString(18), image = rs.getString(19);
                int idCategory = rs.getInt(20);
                Category category = db.getCategoryByID(idCategory);
                Product p = new Product(idProduct, nameProduct, primePrice, salePrice, quantity, brand, screen_size, screen_technology, rear_camera, front_camera, chipset, ram_capacit, internal_storage, pin, sim_card, os, screen_resolution, screen_features, image, category);
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public static void main(String[] args) {
        for(Product i : new ProductDAO().getAllProduct()){
            System.out.println(i.getImage());
        }
    }

    public Product getProductByID(int id) {
        String sql = "SELECT * from Product where idProduct = ?";
        CategoryDAO db = new CategoryDAO();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int idProduct = rs.getInt(1);
                String nameProduct = rs.getString(2) ;
                int primePrice = rs.getInt(3), salePrice = rs.getInt(4);
                int quantity = rs.getInt(5);
                String brand = rs.getString(6), screen_size = rs.getString(7), screen_technology = rs.getString(8),
                        rear_camera = rs.getString(9), front_camera = rs.getString(10);
                String chipset = rs.getString(11), ram_capacit = rs.getString(12), internal_storage = rs.getString(13),
                        pin = rs.getString(14), sim_card = rs.getString(15), os = rs.getString(16);
                String screen_resolution = rs.getString(17), screen_features = rs.getString(18), image = rs.getString(19);
                int idCategory = rs.getInt(20);
                Category category = db.getCategoryByID(idCategory);
                Product p = new Product(idProduct, nameProduct, primePrice, salePrice, quantity, brand, screen_size, screen_technology, rear_camera, front_camera, chipset, ram_capacit, internal_storage, pin, sim_card, os, screen_resolution, screen_features, image, category);
                return p;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
