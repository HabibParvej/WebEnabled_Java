<%@ page import="java.sql.*" %>
<%
    String empid = request.getParameter("empid");
    String name  = request.getParameter("name");
    int age      = Integer.parseInt(request.getParameter("age"));
    String desg  = request.getParameter("desg");
    double sal   = Double.parseDouble(request.getParameter("salary"));

    int rows = 0;
    String jdbcUrl = "jdbc:mysql://localhost:3306/Emp";
    String dbUser = "root";
    String dbPass = "1083";
    String sql = "UPDATE EMP.employee SET name=?, age=?, desg=?, salary=? WHERE empid=?";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection con = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, name);
            ps.setInt(2, age);
            ps.setString(3, desg);
            ps.setDouble(4, sal);
            ps.setString(5, empid);

            rows = ps.executeUpdate();
        }
    } catch (Exception e) {
        out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
    }
%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Update Result</title></head>
<body>
  <h3><%= rows > 0 ? "✅ Employee Updated Successfully!" : "❌ Update Failed. Check Employee ID." %></h3>
</body>
</html>
