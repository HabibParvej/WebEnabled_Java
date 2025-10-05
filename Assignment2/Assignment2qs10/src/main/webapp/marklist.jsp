<%@ page import="java.sql.*" %>
<%
  String reg = request.getParameter("regno");

  // MySQL Connector/J 8+ driver
  Class.forName("com.mysql.cj.jdbc.Driver");

  // Simple MySQL JDBC URL (adjust db name, user, pass)
  String jdbcUrl = "jdbc:mysql://localhost:3306/Stud?useSSL=false&serverTimezone=UTC";
  String dbUser  = "root";
  String dbPass  = "1083";
  String sql = "SELECT name, m1, m2, m3 FROM student WHERE regno=?";

  String name = null; int m1=0,m2=0,m3=0;
  try (Connection con = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
       PreparedStatement ps = con.prepareStatement(sql)) {
    ps.setString(1, reg);
    try (ResultSet rs = ps.executeQuery()) {
      if (rs.next()) {
        name = rs.getString("name");
        m1 = rs.getInt("m1");
        m2 = rs.getInt("m2");
        m3 = rs.getInt("m3");
      }
    }
  } catch (Exception e) {
    out.println("<p>Error: " + e.getMessage() + "</p>");
  }
%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Mark List</title></head>
<body>
<% if (name == null) { %>
  <h3>No record found for RegNo: <%= reg %></h3>
<% } else { 
     int total = m1 + m2 + m3;
%>
  <h2>Mark List</h2>
  <table border="1" cellpadding="6">
    <tr><th>Reg No</th><td><%= reg %></td></tr>
    <tr><th>Name</th><td><%= name %></td></tr>
    <tr><th>Subject 1</th><td><%= m1 %></td></tr>
    <tr><th>Subject 2</th><td><%= m2 %></td></tr>
    <tr><th>Subject 3</th><td><%= m3 %></td></tr>
    <tr><th>Total</th><td><%= total %></td></tr>
  </table>
<% } %>
</body>
</html>
