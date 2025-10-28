package com.payment.validator;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

@FacesValidator("creditCardValidator")
public class CreditCardValidator implements Validator {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) 
            throws ValidatorException {
        
        String creditCard = value.toString().trim();
        
        // Remove spaces and dashes
        creditCard = creditCard.replaceAll("\\s+", "").replaceAll("-", "");
        
        // Check if it contains only digits
        if (!creditCard.matches("\\d+")) {
            FacesMessage msg = new FacesMessage("Credit card must contain only digits.");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
        
        // Check length (most credit cards are 13-19 digits)
        if (creditCard.length() < 13 || creditCard.length() > 19) {
            FacesMessage msg = new FacesMessage("Credit card number must be between 13 and 19 digits.");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
        
        // Luhn Algorithm validation (checksum validation)
        if (!isValidLuhn(creditCard)) {
            FacesMessage msg = new FacesMessage("One or more digits of the number are incorrect.");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
    }
    
    /**
     * Luhn Algorithm to validate credit card number
     */
    private boolean isValidLuhn(String cardNumber) {
        int sum = 0;
        boolean alternate = false;
        
        // Loop through values starting from the rightmost digit
        for (int i = cardNumber.length() - 1; i >= 0; i--) {
            int digit = Character.getNumericValue(cardNumber.charAt(i));
            
            if (alternate) {
                digit *= 2;
                if (digit > 9) {
                    digit = (digit % 10) + 1;
                }
            }
            
            sum += digit;
            alternate = !alternate;
        }
        
        return (sum % 10 == 0);
    }
}
