<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>

<%
String msg = "";

// Only run login logic if it's a POST request
if ("POST".equalsIgnoreCase(request.getMethod())) {
    String uname = request.getParameter("username");
    String pass  = request.getParameter("password");

    if (uname == null || pass == null || uname.trim().isEmpty() || pass.trim().isEmpty()) {
        msg = "Please enter username and password.";
    } else {
        try (Connection c = getCon();
             PreparedStatement ps = c.prepareStatement(
                 "SELECT * FROM users WHERE username=? AND password=?"
             )) {

            ps.setString(1, uname.trim());
            ps.setString(2, pass.trim());
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                session.setAttribute("username", uname.trim());
                response.sendRedirect("welcome.jsp");
                return;
            } else {
                msg = "Invalid Username or Password";
            }
        } catch (Exception e) {
            msg = "Error: " + e.getMessage();
        }
    }
}
%>

<h2>Login</h2>
<% if (!msg.isEmpty()) { %>
    <p style="color:red;"><%= msg %></p>
<% } %>

<form action="login.jsp" method="post">
  <label>Username:</label>
  <input type="text" name="username" required><br><br>

  <label>Password:</label>
  <input type="password" name="password" required><br><br>

  <input type="submit" value="Login">
</form>

<p>Don't have an account? <a href="register.jsp">Register here</a></p>
