package com.payment.bean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.io.Serializable;

@ManagedBean(name = "paymentBean")
@SessionScoped
public class PaymentBean implements Serializable {

    private static final long serialVersionUID = 1L;
    
    private String amount;
    private String creditCard;
    private String expirationDate;
    private boolean processed = false;

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getCreditCard() {
        return creditCard;
    }

    public void setCreditCard(String creditCard) {
        this.creditCard = creditCard;
    }

    public String getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(String expirationDate) {
        this.expirationDate = expirationDate;
    }

    public boolean isProcessed() {
        return processed;
    }

    public void processPayment() {
        this.processed = true;
    }
    
    public void reset() {
        this.amount = null;
        this.creditCard = null;
        this.expirationDate = null;
        this.processed = false;
    }
}
