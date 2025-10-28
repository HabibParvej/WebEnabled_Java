package com.state.bean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.event.ValueChangeEvent;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;

@ManagedBean(name = "stateBean")
@SessionScoped
public class StateBean implements Serializable {

    private static final long serialVersionUID = 1L;
    
    private String selectedState;
    private String language;
    
    // Map of states to their languages
    private static final Map<String, String> stateLanguageMap = new LinkedHashMap<>();
    
    static {
        stateLanguageMap.put("Karnataka", "Kannada");
        stateLanguageMap.put("Maharashtra", "Marathi");
        stateLanguageMap.put("Tamil Nadu", "Tamil");
        stateLanguageMap.put("Kerala", "Malayalam");
        stateLanguageMap.put("Andhra Pradesh", "Telugu");
        stateLanguageMap.put("West Bengal", "Bengali");
        stateLanguageMap.put("Gujarat", "Gujarati");
        stateLanguageMap.put("Rajasthan", "Hindi");
        stateLanguageMap.put("Punjab", "Punjabi");
        stateLanguageMap.put("Odisha", "Odia");
    }
    
    public StateBean() {
        this.selectedState = "";
        this.language = "";
    }
    
    // ValueChangeListener method
    public void stateChanged(ValueChangeEvent event) {
        String newState = (String) event.getNewValue();
        this.language = stateLanguageMap.get(newState);
    }
    
    // Getters and Setters
    public String getSelectedState() {
        return selectedState;
    }
    
    public void setSelectedState(String selectedState) {
        this.selectedState = selectedState;
    }
    
    public String getLanguage() {
        return language;
    }
    
    public void setLanguage(String language) {
        this.language = language;
    }
    
    public Map<String, String> getStateLanguageMap() {
        return stateLanguageMap;
    }
}
