<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Student Mark List</title>
</head>
<body>

<%
String message = "";
int regno = Integer.parseInt(request.getParameter("regno"));

String url = "jdbc:mysql://localhost:3306/schooldb";
String dbUser = "root";    // change if needed
String dbPass = "krox69420";    // change if needed

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(url, dbUser, dbPass);

    String sql = "SELECT name, subject1, subject2, subject3 FROM student_marks WHERE regno=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setInt(1, regno);
    ResultSet rs = ps.executeQuery();

    if(rs.next()){
%>
        <h2>Mark List for Register Number: <%= regno %></h2>
        <table border="1" cellpadding="5" cellspacing="0">
            <tr><th>Name</th><td><%= rs.getString("name") %></td></tr>
            <tr><th>Subject 1</th><td><%= rs.getInt("subject1") %></td></tr>
            <tr><th>Subject 2</th><td><%= rs.getInt("subject2") %></td></tr>
            <tr><th>Subject 3</th><td><%= rs.getInt("subject3") %></td></tr>
        </table>
<%
    } else {
%>
        <h3 style="color:red;">No record found for Register Number <%= regno %></h3>
<%
    }

    rs.close();
    ps.close();
    con.close();

} catch(Exception e) {
    out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
    e.printStackTrace();
}
%>

</body>
</html>
