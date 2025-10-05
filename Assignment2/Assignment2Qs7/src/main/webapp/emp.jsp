<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Q7 Employee</title></head>
<body>
  <form action="updateEMP.jsp" method="post">
    <input name="empid" placeholder="Emp ID" required />
    <input name="name"  placeholder="Name" required />
    <input name="age"   type="number" placeholder="Age" required />
    <input name="desg"  placeholder="Designation" required />
    <input name="salary" type="number" step="0.01" placeholder="Salary" required />
    <button type="submit">Update</button>
  </form>
</body>
</html>
