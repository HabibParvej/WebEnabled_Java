<html>
    <body>
        <form method="post">
            <input type="submit" name="list" value="List Cookies">
        </form>
        <%
            if (request.getParameter("list") != null) {
                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie c : cookies) {
                        out.println("Name: " + c.getName() + " Value: " + c.getValue() + "<br>");
                    }
                } else {
                    out.println("No cookies found.");
                }
            }
        %>
    </body>
</html>
