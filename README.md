# Siliguri Institute of Technology  
**Master of Computer Application**  

## Web Enabled JAVA Programming Lab (MCAN-394B)  
### Assignment #1  

---

## 📌 Questions

### **Q1:**  
Create a simple calculator application using **Servlet**.

---

### **Q2:**  
Create a servlet for a **login page**.  
- If the username and password are correct, display message:  


---

### **Q3:**  
Using **RequestDispatcher Interface**, create a Servlet that validates the password entered by the user.  
- If the password is `"Servlet"`, forward the request to **Welcome Servlet**.  
- Otherwise, stay on the `index.html` page and display an error message.

---

### **Q4:**  
Create a servlet that uses **Cookies** to store the number of times a user has visited the servlet.

---

### **Q5:**  
Create a servlet demonstrating:  
- **Session creation and destruction**.  
- Check whether the user is visiting for the first time or has visited earlier using **sessions**.

---

### **Q6:**  
Create a Servlet application to **upload and download a file**.

---

### **Q7:**  
Write a servlet application to **print the current date and time**.

---

### **Q8:**  
Write a servlet application to establish **communication between HTML and Servlet** using a **hyperlink**.

---

### **Q9:**  
Write an application to **auto-refresh a page** in Servlet.

---

### **Q10:**  
Develop a **Servlet application** for **Email Service Registration**.  

#### HTML Form Fields:
1. First name *(required)*  
2. Middle name *(optional)*  
3. Last name *(required)*  
4. Desired login *(required)*  
5. Password *(required)*  
6. Confirm Password *(required)*  
7. Location *(optional)*  
8. Education *(optional)*  
9. Phone number *(optional)*  

#### Restrictions:
- **Names** (First, Middle, Last) → alphabets only.  
- **Password**:  
- Must contain alphabets.  
- At least **one number**.  
- At least **one special character**.  
- Minimum **6 characters** in length.  
- **Validation** must be done **only on the Servlet side** (no JavaScript allowed).  

#### Output:
- If all restrictions are fulfilled → show **Successful Registration** message.  
- Else → display **appropriate error message**.

---

## 📂 Notes:
- All projects should be implemented using **Java Servlets**.
- Ensure proper folder structure for `WEB-INF`, `web.xml`, and class files.
- No client-side validation — all checks must be handled in the Servlet.
