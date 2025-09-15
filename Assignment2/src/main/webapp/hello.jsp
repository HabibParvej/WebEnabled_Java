<%@ page import="java.util.Date" %>
<%
    String name = request.getParameter("username");
    session.setAttribute("username", name);
    session.setAttribute("startTime", new Date());
%>
<html>
    <body>
        <div style="text-align: right;">Start Time: <%= session.getAttribute("startTime") %></div>
        <h2>Hello <%= name %></h2>
        <form action="logout.jsp" method="post">
            <input type="submit" value="Logout">
        </form>
    </body>
</html>
