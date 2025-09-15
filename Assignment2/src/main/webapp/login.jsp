<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>User Login</title>
</head>
<body>

<%
String message = "";
if ("POST".equalsIgnoreCase(request.getMethod())) {
    String user = request.getParameter("username");
    String pass = request.getParameter("password");

    String url = "jdbc:mysql://localhost:3306/userdb";
    String dbUser = "root";     // change as needed
    String dbPass = "root";     // change as needed

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, dbUser, dbPass);

        String sql = "SELECT * FROM users WHERE username=? AND password=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, pass);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            message = "<h3 style='color:green;'>Login Successful!</h3>";
        } else {
            message = "<h3 style='color:red;'>Invalid username or password!</h3>";
        }

        rs.close();
        ps.close();
        con.close();
    } catch(Exception e) {
        message = "<h3 style='color:red;'>Error: "+e.getMessage()+"</h3>";
        e.printStackTrace();
    }
}
%>

<h2>User Login</h2>
<form method="post">
    Username: <input type="text" name="username" required><br><br>
    Password: <input type="password" name="password" required><br><br>
    <input type="submit" value="Login">
</form>

<%= message %>

</body>
</html>
