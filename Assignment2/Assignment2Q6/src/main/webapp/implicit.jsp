<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Q6 Intrinsic</title></head>
<body>
  <h2>Use of Intrinsic Objects in JSP</h2>

  <h3>Request</h3>
  <p>Query String: <%= request.getQueryString() %></p>
  <p>Context Path: <%= request.getContextPath() %></p>
  <p>Remote Host: <%= request.getRemoteHost() %></p>

  <h3>Response</h3>
  <%
    response.setContentType("text/html;charset=UTF-8");
  %>
  <p>Character Encoding: <%= response.getCharacterEncoding() %></p>
  <p>Content Type: <%= response.getContentType() %></p>
  <p>Locale: <%= response.getLocale() %></p>

  <h3>Session</h3>
  <%
    if (session.isNew()) { session.setAttribute("createdAt", new Date()); }
  %>
  <p>ID: <%= session.getId() %></p>
  <p>Creation Time: <%= new Date(session.getCreationTime()) %></p>
  <p>Last Access Time: <%= new Date(session.getLastAccessedTime()) %></p>

  <h3>Application</h3>
  <p>Server Info: <%= application.getServerInfo() %></p>
</body>
</html>
