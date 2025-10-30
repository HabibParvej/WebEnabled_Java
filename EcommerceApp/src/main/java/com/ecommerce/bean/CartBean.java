package com.ecommerce.bean;

import com.ecommerce.model.CartItem;
import com.ecommerce.model.Product;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@ManagedBean(name = "cartBean")
@SessionScoped
public class CartBean implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private List<CartItem> cartItems;
    private String message;
    
    public CartBean() {
        cartItems = new ArrayList<>();
    }
    
    // Add product to cart
    public void addToCart(Product product) {
        // Check if product already in cart
        for (CartItem item : cartItems) {
            if (item.getProduct().getId().equals(product.getId())) {
                // Increase quantity if already in cart
                item.setQuantity(item.getQuantity() + 1);
                message = product.getName() + " quantity increased in cart!";
                return;
            }
        }
        
        // Add new item to cart
        cartItems.add(new CartItem(product, 1));
        message = product.getName() + " added to cart!";
    }
    
    // Remove item from cart
    public void removeFromCart(CartItem item) {
        cartItems.remove(item);
        message = item.getProduct().getName() + " removed from cart!";
    }
    
    // Update quantity
    public void updateQuantity(CartItem item, int newQuantity) {
        if (newQuantity <= 0) {
            removeFromCart(item);
        } else if (newQuantity <= item.getProduct().getStock()) {
            item.setQuantity(newQuantity);
            message = "Quantity updated!";
        } else {
            message = "Not enough stock available!";
        }
    }
    
    // Clear entire cart
    public void clearCart() {
        cartItems.clear();
        message = "Cart cleared!";
    }
    
    // Calculate total items in cart
    public int getTotalItems() {
        int total = 0;
        for (CartItem item : cartItems) {
            total += item.getQuantity();
        }
        return total;
    }
    
    // Calculate cart total price
    public double getCartTotal() {
        double total = 0.0;
        for (CartItem item : cartItems) {
            total += item.getSubtotal();
        }
        return total;
    }
    
    // Check if cart is empty
    public boolean isCartEmpty() {
        return cartItems.isEmpty();
    }
    
    // Getters and Setters
    public List<CartItem> getCartItems() {
        return cartItems;
    }
    
    public String getMessage() {
        return message;
    }
    
    public void setMessage(String message) {
        this.message = message;
    }
}
