package com.easydevs.service;

import com.easydevs.model.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Bartek on 18/07/2017.
 */
@Service
public class ProductService {
    private final List<Product> productList = new ArrayList<Product>();
    private long currentId = 0;

    public long generateNewId() {
        currentId++;
        return currentId;
    }


    public void insert(Product product) {
        productList.add(product);
    }

    public void update(Product product) {
        Product editedProduct = find(product.getId());
        editedProduct.setName(product.getName());
        editedProduct.setManufacturer(product.getManufacturer());
    }

    public Product find(long productId) {
        for (Product product : productList) {
            if (product.getId() == productId) {
                return product;
            }
        }
        return null;
    }

    public List<Product> findAll() {
        return productList;
    }

    public void print() {
        for (int i = 0; i < productList.size() - 1; ) {
            System.out.println(productList.get(i));
        }

    }
}
