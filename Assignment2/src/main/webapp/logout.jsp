<%@ page import="java.util.Date" %>
<%
    String name = (String)session.getAttribute("username");
    Date startTime = (Date)session.getAttribute("startTime");
    Date endTime = new Date();
    long duration = (endTime.getTime() - startTime.getTime()) / 1000; // seconds
    session.invalidate();
%>
<html>
    <body>
        <h2>Thank You <%= name %></h2>
        <p>Session duration: <%= duration %> seconds</p>
    </body>
</html>
