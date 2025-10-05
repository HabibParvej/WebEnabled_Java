<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
    String uname = request.getParameter("username");
    String pass = request.getParameter("password");

   
    if(uname != null && pass != null && uname.equals("admin") && pass.equals("1234")) {
        session.setAttribute("user", uname); 
        response.sendRedirect("dashboard.jsp");
    } else {
        out.println("<h3>Invalid username or password</h3>");
        out.println("<a href='login.jsp'>Try Again</a>");
    }
%>