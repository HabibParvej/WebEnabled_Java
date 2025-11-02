package com.datatable.bean;

import com.datatable.model.Product;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@ManagedBean(name = "productBean")
@SessionScoped
public class ProductBean implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private List<Product> products;
    private String message;
    
    public ProductBean() {
        products = new ArrayList<>();
        // Initialize with sample data
        products.add(new Product("A0001", "Intel CPU", 700.00, 1));
        products.add(new Product("A0002", "Harddisk 10TB", 500.00, 2));
        products.add(new Product("A0003", "Dell Laptop", 11600.00, 8));
        products.add(new Product("A0004", "Samsung LCD", 5200.00, 3));
        products.add(new Product("A0005", "A4Tech Mouse", 100.00, 10));
    }
    
    public List<Product> getProducts() {
        return products;
    }
    
    public void setProducts(List<Product> products) {
        this.products = products;
    }
    
    public String getMessage() {
        return message;
    }
    
    public void setMessage(String message) {
        this.message = message;
    }
    
    // Edit action
    public void editProduct(Product product) {
        product.setEditable(true);
        message = "";
    }
    
    // Save action after editing
    public void saveProduct(Product product) {
        product.setEditable(false);
        message = "Row updated successfully and click on 'Save Changes' button";
    }
    
    // Delete action
    public void deleteProduct(Product product) {
        products.remove(product);
        message = "Row deleted successfully. Update row no 2D, and this row is back. Its been restored with Point-editable again.";
    }
    
    // Save all changes
    public void saveChanges() {
        message = "All changes saved successfully!";
    }
}
