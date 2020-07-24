package com.foundation.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.util.List;


import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;
import com.opencsv.bean.HeaderColumnNameMappingStrategy;
import java.util.ArrayList;
import com.foundation.entity.Product;

/**
 * @author bao.nguyentx
 *
 */
public class IOHelper {

    /* Ghi data vao file */
    public static boolean writter(String path, Object obj) {
        // /* test ton tai file*/
        File file = new File(path);
        boolean checkExists = file.exists();
        try {
            try (FileOutputStream fos = new FileOutputStream(path,true);
                    PrintWriter pw = new PrintWriter(fos)) {
                if (!checkExists) {
                    pw.println(
                            "id,timeOfSale,name,materials,quantity,price,totalCost");
                }
                Context.processing();
                pw.println(obj.toString());
                Context.success();
                return true;
            }
        } catch (IOException e) {
            Context.ioError();
        }
        return false;
    }

    /* Doc data san pham tu file */
    public static List<Product> productReader(String path) {
        List<Product> products = new ArrayList<>();
        /* Xu li doc du lieu tu file */
        try (Reader reader = new FileReader(path);) {
            HeaderColumnNameMappingStrategy<Product> strategy = new HeaderColumnNameMappingStrategy<>();
            strategy.setType(Product.class);
            CsvToBean<Product> csvToBean = new CsvToBeanBuilder<Product>(reader)
                    .withMappingStrategy(strategy)
                    .withIgnoreLeadingWhiteSpace(true)
                    .build();
            csvToBean.parse().forEach(products::add);
        } catch (FileNotFoundException e) {
            Context.noData();
        } catch (IOException e) {
            Context.ioError();
        }
        return products;
    }
}
