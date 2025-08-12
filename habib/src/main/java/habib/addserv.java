package habib;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

public class addserv extends HttpServlet {
    public void service(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        // Get inputs directly (assumes user enters valid numbers)
        double num1 = Double.parseDouble(req.getParameter("num1"));
        double num2 = Double.parseDouble(req.getParameter("num2"));
        String symb = req.getParameter("symb");
        double result = 0;

        if (symb.equals("add")) {
            result = num1 + num2;
        } else if (symb.equals("sub")) {
            result = num1 - num2;
        } else if (symb.equals("mul")) {
            result = num1 * num2;
        } else if (symb.equals("div")) {
            if (num2 == 0) {
                out.println("<h3>Cannot divide by zero</h3>");
                return;
            }
            result = num1 / num2;
        } else {
            out.println("<h3>Invalid operation</h3>");
            return;
        }

        out.println("<h2>Result: " + result + "</h2>");
        out.close();
    }
}