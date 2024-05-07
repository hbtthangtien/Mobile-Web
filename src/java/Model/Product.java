/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author hbtth
 */
public class Product {
    private int idProduct;
    private String nameProduct;
    private int primePrice, salePrice;
    private int quantity;
    private String brand, screen_size, screen_technology, rear_camera, front_camera;
    private String chipset, ram_capacit, internal_storage, pin, sim_card, os;
    private String screen_resolution, screen_features, image;
    private Category category;

    public Product() {
    }

    public Product(int idProduct, String nameProduct, int primePrice, int salePrice, int quantity, String brand, String screen_size, String screen_technology, String rear_camera, String front_camera, String chipset, String ram_capacit, String internal_storage, String pin, String sim_card, String os, String screen_resolution, String screen_features, String image, Category category) {
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.primePrice = primePrice;
        this.salePrice = salePrice;
        this.quantity = quantity;
        this.brand = brand;
        this.screen_size = screen_size;
        this.screen_technology = screen_technology;
        this.rear_camera = rear_camera;
        this.front_camera = front_camera;
        this.chipset = chipset;
        this.ram_capacit = ram_capacit;
        this.internal_storage = internal_storage;
        this.pin = pin;
        this.sim_card = sim_card;
        this.os = os;
        this.screen_resolution = screen_resolution;
        this.screen_features = screen_features;
        this.image = image;
        this.category = category;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public int getPrimePrice() {
        return primePrice;
    }

    public void setPrimePrice(int primePrice) {
        this.primePrice = primePrice;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getScreen_size() {
        return screen_size;
    }

    public void setScreen_size(String screen_size) {
        this.screen_size = screen_size;
    }

    public String getScreen_technology() {
        return screen_technology;
    }

    public void setScreen_technology(String screen_technology) {
        this.screen_technology = screen_technology;
    }

    public String getRear_camera() {
        return rear_camera;
    }

    public void setRear_camera(String rear_camera) {
        this.rear_camera = rear_camera;
    }

    public String getFront_camera() {
        return front_camera;
    }

    public void setFront_camera(String front_camera) {
        this.front_camera = front_camera;
    }

    public String getChipset() {
        return chipset;
    }

    public void setChipset(String chipset) {
        this.chipset = chipset;
    }

    public String getRam_capacit() {
        return ram_capacit;
    }

    public void setRam_capacit(String ram_capacit) {
        this.ram_capacit = ram_capacit;
    }

    public String getInternal_storage() {
        return internal_storage;
    }

    public void setInternal_storage(String internal_storage) {
        this.internal_storage = internal_storage;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getSim_card() {
        return sim_card;
    }

    public void setSim_card(String sim_card) {
        this.sim_card = sim_card;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getScreen_resolution() {
        return screen_resolution;
    }

    public void setScreen_resolution(String screen_resolution) {
        this.screen_resolution = screen_resolution;
    }

    public String getScreen_features() {
        return screen_features;
    }

    public void setScreen_features(String screen_features) {
        this.screen_features = screen_features;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
}
