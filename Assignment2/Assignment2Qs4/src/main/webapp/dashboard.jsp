<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    // Check if user is logged in
    String user = (String)session.getAttribute("user");
    if(user == null) {
        response.sendRedirect("login.jsp"); 
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>
</head>
<body>
<h2>Welcome, <%= user %>!</h2>
<p>This is your dashboardddddddddddddddddddddd. Only logged-in users can see this.</p>
<a href="logout.jsp">Logout</a>
</body>
</html>



