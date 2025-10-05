<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Q3 Age Gate</title></head>
<body>
  <form action="ageCheck.jsp" method="post">
    <input name="name" placeholder="Name" required />
    <input name="age" type="number" min="0" placeholder="Age" required />
    <button type="submit">Submit</button>
  </form>
</body>
</html>
