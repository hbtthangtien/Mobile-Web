/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author hbtth
 */
public class Category {
    private int idCatrgoriy;
    private String nameCategory;

    public Category() {
    }

    public Category(int idCatrgoriy, String nameCategory) {
        this.idCatrgoriy = idCatrgoriy;
        this.nameCategory = nameCategory;
    }
    
    public int getIdCatrgoriy() {
        return idCatrgoriy;
    }

    public void setIdCatrgoriy(int idCatrgoriy) {
        this.idCatrgoriy = idCatrgoriy;
    }

    public String getNameCategory() {
        return nameCategory;
    }

    public void setNameCategory(String nameCategory) {
        this.nameCategory = nameCategory;
    }
    
}
