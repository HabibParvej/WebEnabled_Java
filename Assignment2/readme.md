
---

## 📗 **README for Assignment 2 – JSP**

```markdown
# 🌐 Assignment 2 – Java Server Pages (JSP)
### 📅 Date of Submission: 15/09/2025
### 🏫 Siliguri Institute of Technology  
**Master of Computer Application (MCA)**  
**Subject:** Web Enabled Java Programming (MCAN-E394B)

---

## 🧩 Overview
This repository contains a set of **JSP-based web applications** demonstrating JSP scripting elements, implicit objects, JSTL, session management, and database connectivity.

---

## 🧠 Assignment Questions & Descriptions

### **1️⃣ JSP Session Tracking with Login & Logout**
- Input: User’s name.  
- Output: Displays “Hello `<name>`” and shows start time on top-right.  
- Includes a logout button → redirects to a **Thank You page** showing session duration.

---

### **2️⃣ List Browser Cookies**
- Display all cookies stored in the browser on button click.

---

### **3️⃣ Age Validation JSP**
- Input: Name and Age.  
- If age < 18 → “Hello `<name>`, you are not authorized to visit the site.”  
- Else → “Welcome `<name>` to this site.”

---

### **4️⃣ User Authentication (Database Integration)**
- Store login credentials in **Oracle Database**.  
- Validate login and display appropriate message.

---

### **5️⃣ Email Validation**
Check if entered email ID is valid.  
✅ Must contain:
- Exactly one `@`
- At least one `.`
- Minimum 2 characters between `@` and `.`, and after `.`

---

### **6️⃣ Intrinsic Objects Demonstration**
Display JSP **implicit objects** (request, response, session, application, etc.) and their values.

---

### **7️⃣ Employee Data Update (Database Integration)**
Create HTML form with:
`empid, name, age, designation, salary`  
Update employee table with matching `empid` and display `"Updating Success"` or `"Updating Error"`.

---

### **8️⃣ JSTL Function Tag Demonstration**
Use JSTL **function tag library** to demonstrate:
`contains, endsWith, indexOf, join, replace, split, startsWith, substring, toUpperCase, trim`, etc.

---

### **9️⃣ JSTL Core Tag Demonstration**
Use JSTL **core tag library** such as:
`<c:if>`, `<c:forEach>`, `<c:choose>`, `<c:when>`, `<c:otherwise>`, `<c:set>`, `<c:out>`, `<c:import>`, etc.

---

### **🔟 Three-Tier Student Mark List Application**
- Input: Register Number (`stud.html`)  
- Backend: Fetch student marks from database using JSP.  
- Output: Display mark list dynamically on webpage.

---

## 🧰 Technologies Used
- **Java Server Pages (JSP)**
- **JSTL Core & Function Tags**
- **HTML/CSS**
- **Oracle Database**
- **Apache Tomcat**
- **Eclipse / NetBeans IDE**

---

## ⚙️ How to Run
1. Clone this repository:  
   ```bash
   git clone https://github.com/<your-username>/<repo-name>

