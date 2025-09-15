<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Update Employee</title>
</head>
<body>

<%
String message = "";
if ("POST".equalsIgnoreCase(request.getMethod())) {
    try {
        int empid   = Integer.parseInt(request.getParameter("empid"));
        String name = request.getParameter("name");
        int age     = Integer.parseInt(request.getParameter("age"));
        String desg = request.getParameter("desg");
        double salary = Double.parseDouble(request.getParameter("salary"));

        String url = "jdbc:mysql://localhost:3306/companydb";
        String dbUser = "root";   // change as needed
        String dbPass = "krox69420";   // change as needed

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, dbUser, dbPass);

        String sql = "UPDATE employee SET name=?, age=?, desg=?, salary=? WHERE empid=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, name);
        ps.setInt(2, age);
        ps.setString(3, desg);
        ps.setDouble(4, salary);
        ps.setInt(5, empid);

        int rows = ps.executeUpdate();
        if (rows > 0) {
            message = "<h3 style='color:green;'>Updating Success</h3>";
        } else {
            message = "<h3 style='color:red;'>Updating Error</h3>";
        }

        ps.close();
        con.close();
    } catch(Exception e) {
        e.printStackTrace();
        message = "<h3 style='color:red;'>Updating Error: " + e.getMessage() + "</h3>";
    }
}
%>

<h2>Update Employee Details</h2>
<form method="post">
    Emp ID: <input type="number" name="empid" required><br><br>
    Name: <input type="text" name="name" required><br><br>
    Age: <input type="number" name="age" required><br><br>
    Designation: <input type="text" name="desg" required><br><br>
    Salary: <input type="number" step="0.01" name="salary" required><br><br>
    <input type="submit" value="Update">
</form>

<%= message %>

</body>
</html>
