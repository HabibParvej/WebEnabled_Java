package com.datatable.model;

import java.io.Serializable;

public class Product implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private String orderNo;
    private String productName;
    private double price;
    private int quantity;
    private boolean editable;
    
    public Product() {
    }
    
    public Product(String orderNo, String productName, double price, int quantity) {
        this.orderNo = orderNo;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.editable = false;
    }
    
    // Getters and Setters
    public String getOrderNo() {
        return orderNo;
    }
    
    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }
    
    public String getProductName() {
        return productName;
    }
    
    public void setProductName(String productName) {
        this.productName = productName;
    }
    
    public double getPrice() {
        return price;
    }
    
    public void setPrice(double price) {
        this.price = price;
    }
    
    public int getQuantity() {
        return quantity;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public boolean isEditable() {
        return editable;
    }
    
    public void setEditable(boolean editable) {
        this.editable = editable;
    }
}
