import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class VisitCounter extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        int count = 0;
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("count")) {
                    count = Integer.parseInt(c.getValue());
                }
            }
        }

        count++;
        Cookie c = new Cookie("count", String.valueOf(count));
        response.addCookie(c);

        out.println("<h2>Cookie Visit Counter</h2>");
        if (count == 1) {
            out.println("Welcome! This is your first visit.");
        } else {
            out.println("Welcome back! You have visited " + count + " times.");
        }
    }
}
