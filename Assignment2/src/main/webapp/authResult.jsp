<%
    String name = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));
    if(age < 18){
%>
        Hello <%= name %>, you are not authorized to visit the site.
<%
    } else {
%>
        Welcome <%= name %> to this site.
<%
    }
%>
