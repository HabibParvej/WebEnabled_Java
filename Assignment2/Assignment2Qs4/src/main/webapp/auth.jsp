<%@ page import="java.sql.*" %>
<%
  String u = request.getParameter("u");
  String p = request.getParameter("p");

  boolean ok = false;
  String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe"; // or service name
  String dbUser = "YOUR_USER";
  String dbPass = "YOUR_PASS";
  String sql = "SELECT 1 FROM users WHERE username=? AND password=?";

  try {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      try (Connection con = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
           PreparedStatement ps = con.prepareStatement(sql)) {
          ps.setString(1, u);
          ps.setString(2, p);
          try (ResultSet rs = ps.executeQuery()) {
              ok = rs.next();
          }
      }
  } catch (Exception e) {
      out.println("<p>Error: " + e.getMessage() + "</p>");
  }
%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Auth Result</title></head>
<body>
  <h3><%= ok ? "Login Successful" : "Login Failed" %></h3>
</body>
</html>
