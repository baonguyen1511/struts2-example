package com.foundation.util;

/**
 * @author bao.nguyentx
 *
 */
public class Context {
    
    public static void processing() {
        System.out.print("Dang ghi du lieu moi.........\n");
    }

    public static void success() {
        System.out.println("Xu li thanh cong.........\n");
    }

    public static void failure() {
        System.err.println("Xu li that bai.........\n");
    }

    public static void ioError() {
        System.err.println("Xay ra loi IO........\n");
    }

    public static void noData() {
        System.err.println("Khong co du lieu hoac file........\n");
    }
    
}
