<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<html>
<body>
<h2>JSP Intrinsic Objects</h2>
Request Object: <%= request.toString() %> <br>
Context Path: <%= request.getContextPath() %> <br>
Remote Host: <%= request.getRemoteHost() %> <br>
Response Object: <%= response.getCharacterEncoding() %> <br>
Session ID: <%= session.getId() %> <br>
Application Object: <%= application.getServerInfo() %> <br>
</body>
</html>
