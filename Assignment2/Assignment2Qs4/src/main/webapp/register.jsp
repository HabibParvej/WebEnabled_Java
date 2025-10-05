<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>

<%
String msg = "";
boolean success = false;

// Only run logic if it's a POST request
if ("POST".equalsIgnoreCase(request.getMethod())) {
    String uname = request.getParameter("username");
    String pass  = request.getParameter("password");

    if (uname == null || pass == null || uname.trim().isEmpty() || pass.trim().isEmpty()) {
        msg = "Please fill in all fields.";
    } else {
        try (Connection c = getCon();
             PreparedStatement ps = c.prepareStatement(
                 "INSERT INTO users(username, password) VALUES(?, ?)"
             )) {

            ps.setString(1, uname.trim());
            ps.setString(2, pass.trim());
            ps.executeUpdate();

            success = true; // mark successful registration

        } catch (SQLIntegrityConstraintViolationException e) {
            msg = "Username already exists. Please choose another.";
        } catch (Exception e) {
            msg = "Error: " + e.getMessage();
        }
    }
}
%>

<h2>Register</h2>

<% if (success) { %>
    <p style="color:green;">Registration successful! 🎉</p>
    <p><a href="login.jsp">Click here to Login</a></p>
<% } else { %>
    <% if (!msg.isEmpty()) { %>
        <p style="color:red;"><%= msg %></p>
    <% } %>

    <!-- Registration Form -->
    <form action="register.jsp" method="post">
      <label>Username:</label>
      <input type="text" name="username" required><br><br>

      <label>Password:</label>
      <input type="password" name="password" required><br><br>

      <input type="submit" value="Register">
    </form>

    <br>
    <p>Already have an account? <a href="login.jsp">Login here</a></p>
<% } %>
