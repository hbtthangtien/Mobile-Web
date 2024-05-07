/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author hbtth
 */
public class OrderDetail {
    private int idOrderdetail, idOrder, idProduct, quantity, totalInvoice;
    private String color;

    public OrderDetail() {
    }

    public OrderDetail(int idOrderdetail, int idOrder, int idProduct, int quantity, int totalInvoice, String color) {
        this.idOrderdetail = idOrderdetail;
        this.idOrder = idOrder;
        this.idProduct = idProduct;
        this.quantity = quantity;
        this.totalInvoice = totalInvoice;
        this.color = color;
    }

    public int getIdOrderdetail() {
        return idOrderdetail;
    }

    public void setIdOrderdetail(int idOrderdetail) {
        this.idOrderdetail = idOrderdetail;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getTotalInvoice() {
        return totalInvoice;
    }

    public void setTotalInvoice(int totalInvoice) {
        this.totalInvoice = totalInvoice;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    
    
    
}
