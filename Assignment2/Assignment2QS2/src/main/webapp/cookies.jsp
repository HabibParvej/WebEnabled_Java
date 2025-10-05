<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Q2 Cookies</title></head>
<body>
  <form method="get">
    <button type="submit" name="list" value="1">List Cookies</button>
  </form>
  <%
    if ("1".equals(request.getParameter("list"))) {
        Cookie[] cs = request.getCookies();
        if (cs == null || cs.length == 0) {
  %>
        <p>No cookies found.</p>
  <%
        } else {
  %>
        <h3>Cookies</h3>
        <ul>
        <%
          for (Cookie c : cs) {
        %>
            <li><%= c.getName() %> = <%= c.getValue() %></li>
        <%
          }
        %>
        </ul>
  <%
        }
    }
  %>
</body>
</html>
