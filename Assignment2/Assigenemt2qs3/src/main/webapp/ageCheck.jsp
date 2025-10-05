<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
  String n = request.getParameter("name");
  String a = request.getParameter("age");
  int age = 0;
  try { age = Integer.parseInt(a); } catch (Exception e) { age = 0; }
%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Result</title></head>
<body>
<% if (age < 18) { %>
  <p>Hello <%= n %>, you are not authorized to visit the site</p>
<% } else { %>
  <p>Welcome <%= n %> to this site</p>
<% } %>
</body>
</html>
