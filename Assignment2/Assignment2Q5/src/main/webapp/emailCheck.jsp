<%
  String email = request.getParameter("email");
  Boolean valid = null;
  if (email != null) {
      email = email.trim();
      int atCount = 0;
      for (char ch : email.toCharArray()) if (ch=='@') atCount++;
      int at = email.indexOf('@');
      int lastDot = email.lastIndexOf('.');
      boolean hasDot = email.indexOf('.') != -1;
      boolean orderOk = at > 0 && lastDot > at;
      boolean betweenOk = orderOk && (lastDot - at - 1) >= 2;
      boolean afterOk = lastDot >= 0 && (email.length() - lastDot - 1) >= 2;
      valid = (atCount == 1) && hasDot && betweenOk && afterOk;
  }
%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Q5 Email</title></head>
<body>
  <form method="get">
    <input name="email" placeholder="Enter email" required />
    <button type="submit">Check</button>
  </form>
  <% if (valid != null) { %>
    <p>Email is <%= valid ? "VALID" : "INVALID" %></p>
  <% } %>
</body>
</html>
