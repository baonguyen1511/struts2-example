package com.foundation.entity;

import java.util.Comparator;

import lombok.Data;

/**
 * @author bao.nguyentx
 *
 */
@Data
public class Product implements Comparator<Product> {

    /* Ma so thu tu sp */
    private int id;
    /* Ten loai sp */
    private String name;
    /* Thoi diem ban ra */
    private String timeOfSale;
    /* Thanh phan nguyen lieu */
    private String materials;
    /* So luong */
    private int quantity;
    /* Gia */
    private float price;
    /* Tong chi phi */
    private float totalCost;

    @Override
    public String toString() {
        /*
         * return id + "," + timeOfSale + "," + name + "," + materials + "," +
         * quantity + "," + price + "," + totalCost;
         */
        return this.id + "," + this.timeOfSale + "," + this.name + ","
                + this.materials + "," + this.quantity + "," + this.price + ","
                + this.totalCost;
    }

    public String printScreen() {
        /*
         * return "NO." + id + ", TIME: " + timeOfSale + ", PRICE: " + price +
         * ", NAME: " + name;
         */
        return "NO." + this.id + ", TIME: " + this.timeOfSale + ", PRICE: "
                + this.price + ", NAME: " + this.name;
    }

    public int compare(Product o1, Product o2) {
        return (int) (o2.getTotalCost() - o1.getTotalCost());
    }

}
