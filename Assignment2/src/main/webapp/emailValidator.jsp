<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post">
    Email: <input type="text" name="email">
    <input type="submit" value="Check">
</form>
<%
    if(request.getParameter("email")!=null){
        String email = request.getParameter("email");
        boolean valid = false;
        int at = email.indexOf("@");
        int dot = email.indexOf(".", at);
        if (at > 0 && dot > (at+2) && dot < email.length()-2 && email.indexOf("@",at+1) == -1) valid = true;
        out.println(valid ? "Valid Email ID" : "Invalid Email ID");
    }
%>

</body>
</html>