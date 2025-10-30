package com.ecommerce.bean;

import com.ecommerce.model.Product;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ApplicationScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@ManagedBean(name = "productBean")
@ApplicationScoped
public class ProductBean implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private List<Product> products;
    
    public ProductBean() {
        products = new ArrayList<>();
        
        // Initialize product catalog
        products.add(new Product("P001", "Dell XPS 15 Laptop", 
            "15.6\" 4K Display, Intel i7, 16GB RAM, 512GB SSD", 
            1299.99, "images/laptop.jpg", 10));
        
        products.add(new Product("P002", "iPhone 14 Pro", 
            "6.1\" Super Retina XDR, A16 Chip, 128GB, Deep Purple", 
            999.99, "images/phone.jpg", 15));
        
        products.add(new Product("P003", "Sony WH-1000XM5 Headphones", 
            "Noise Cancelling, 30-Hour Battery, Premium Sound Quality", 
            399.99, "images/headphones.jpg", 25));
        
        products.add(new Product("P004", "Canon EOS R6 Camera", 
            "20MP Full-Frame, 4K Video, Image Stabilization", 
            2499.99, "images/camera.jpg", 8));
        
        products.add(new Product("P005", "iPad Pro 12.9\"", 
            "M2 Chip, Liquid Retina XDR, 256GB, Space Gray", 
            1099.99, "images/tablet.jpg", 12));
        
        products.add(new Product("P006", "Samsung Galaxy Watch 5", 
            "GPS, Heart Rate Monitor, Sleep Tracking, 40mm", 
            279.99, "images/phone.jpg", 20));
    }
    
    public List<Product> getProducts() {
        return products;
    }
    
    public Product getProductById(String id) {
        for (Product product : products) {
            if (product.getId().equals(id)) {
                return product;
            }
        }
        return null;
    }
}
