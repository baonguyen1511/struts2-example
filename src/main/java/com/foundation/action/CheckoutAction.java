package com.foundation.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import com.foundation.entity.Product;
import com.foundation.util.IOHelper;
import com.opensymphony.xwork2.ActionSupport;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CheckoutAction extends ActionSupport {

    /**
     * 
     */
    private static final long serialVersionUID = 4008290482991716543L;
    /*
     * duong dan tap tin csv
     */
    public static final String LIST_SALE_PRODUCT_PATH = "D:\\data.csv";
    /*
     * so luong nguyen lieu toi da cua san pham
     */
    public static final int MAXIMUM_MATERIALS = 8;
    /*
     * so luong it nhat phai mua
     */
    public static final int MINIMUM_QUANTITY = 1;
    /*
     * thuoc tinh xu li
     */
    private String name;
    private String quantity;
    private String egg;
    private String floss;
    private String pork;
    private String beef;
    private String roll;
    private String meat;
    private String salmon;
    private String vegetable;
    private String spice;
    private List<Product> products = IOHelper.productReader(LIST_SALE_PRODUCT_PATH);
    /*
     * xu li mua hang
     */
    public String checkout() {
        if (validateMaterials() > MAXIMUM_MATERIALS) {
            return ERROR;
        } else {
            if (!(Integer.parseInt(quantity) >= MINIMUM_QUANTITY)) {
                return ERROR;
            } else {
                Product product = new Product();
                product.setId(products.size() + 1);
                product.setTimeOfSale(
                        new SimpleDateFormat("yyyy/MM/dd HH:mm:ss")
                                .format(Calendar.getInstance().getTime()));
                product.setName(name);
                product.setMaterials(setMaterials());
                product.setQuantity(Integer.parseInt(quantity));
                product.setPrice(setPrice());
                product.setTotalCost(
                        product.getQuantity() * product.getPrice());
                if (IOHelper.writter(LIST_SALE_PRODUCT_PATH, product)) {
                    products = IOHelper.productReader(LIST_SALE_PRODUCT_PATH);
                } else {
                    return ERROR;
                }
            }
        }
        return SUCCESS;
    }
    /*
     * xu li xac thuc so luong nguyen lieu/
     */
    private int validateMaterials() {
        int sum = 0;
        if (egg != null) {
            sum += 1;
        }
        if (floss != null) {
            sum += 1;
        }
        if (pork != null) {
            sum += 1;
        }
        if (beef != null) {
            sum += 1;
        }
        if (meat != null) {
            sum += 1;
        }
        if (roll != null) {
            sum += 1;
        }
        if (salmon != null) {
            sum += 1;
        }
        if (vegetable != null) {
            sum += 1;
        }
        if (spice != null) {
            sum += 1;
        }
        return sum;
    }

    /*
     * xu li ket qua noi dung thanh phan nguyen lieu
     */
    private String setMaterials() {
        String s = "[Bánh mì không";
        if (egg != null) {
            s += " + Trứng chiên";
        }
        if (floss != null) {
            s += " + Chà bông";
        }
        if (pork != null) {
            s += " + Chả lụa";
        }
        if (beef != null) {
            s += " + Chả bò";
        }
        if (meat != null) {
            s += " + Thịt";
        }
        if (roll != null) {
            s += " + Nem";
        }
        if (salmon != null) {
            s += " + Cá hồi";
        }
        if (vegetable != null) {
            s += " + Rau-dưa";
        }
        if (spice != null) {
            s += " + Gia vị";
        }
        return s + "]";
    }

    /*
     * xu li ket qua tinh gia san pham dua tren nguyen lieu
     */
    private float setPrice() {
        float sum = 8;
        if (egg != null) {
            sum += 5;
        }
        if (floss != null) {
            sum += 5;
        }
        if (pork != null) {
            sum += 5;
        }
        if (beef != null) {
            sum += 5;
        }
        if (meat != null) {
            sum += 8;
        }
        if (roll != null) {
            sum += 4;
        }
        if (salmon != null) {
            sum += 5;
        }
        if (vegetable != null) {
            sum += 1;
        }
        if (spice != null) {
            sum += 1;
        }
        return sum * 1000;
    }
}
