<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %>
<%
    String name = request.getParameter("name");
    if (name != null && !name.trim().isEmpty()) {
        session.setAttribute("name", name.trim());
    }
    if (session.getAttribute("startTime") == null) {
        session.setAttribute("startTime", new Date());
    }
    String sessName = (String) session.getAttribute("name");
    java.util.Date start = (java.util.Date) session.getAttribute("startTime");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8"><title>Hello</title>
  <style>.top-right{position:fixed;right:16px;top:8px;color:#333}</style>
</head>
<body>
  <div class="top-right">Start Time: <%= start %></div>
  <h1>Hello <%= (sessName==null?"Guest":sessName) %></h1>
  <form action="logout.jsp" method="post">
    <button type="submit">Logout</button>
  </form>
</body>
</html>
