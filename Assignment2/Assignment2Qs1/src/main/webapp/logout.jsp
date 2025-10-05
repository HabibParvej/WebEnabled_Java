<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %>
<%
    String name = (String) session.getAttribute("name");
    Date start = (Date) session.getAttribute("startTime");
    Date now = new Date();
    long ms = (start == null) ? 0 : (now.getTime() - start.getTime());
    long seconds = ms / 1000;
    long minutes = seconds / 60;
    long remSeconds = seconds % 60;
    session.invalidate();
%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Logout</title></head>
<body>
  <h2>Thank You <%= (name==null?"User":name) %></h2>
  <p>Session Duration: <%= minutes %> min <%= remSeconds %> sec</p>
</body>
</html>
