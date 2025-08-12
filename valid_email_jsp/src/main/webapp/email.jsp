<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    String email = request.getParameter("eid");
    if (email.contains("@") && email.contains(".")) {

        int pos1 = email.indexOf("@");
        int pos2 = email.indexOf(".");
        
        if (pos1 + 2 <= pos2 && pos2 + 2 < email.length()) {
            out.println("<p style='color:green'>Valid Email: " + email + "</p>");
        } else {
            out.println("<p style='color:red'>Invalid Email: " + email + "</p>");
        }
    } else {
        out.println("<p style='color:red'>Invalid Email: " + email + "</p>");
    }
%>
</body>
</html>