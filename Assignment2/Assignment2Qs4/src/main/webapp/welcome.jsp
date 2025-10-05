<%
String user = (String) session.getAttribute("username");
if (user == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>

<h2>Welcome, <%= user %>!</h2>
<p>You have successfully logged in.</p>
<a href="logout.jsp">Logout</a>
