package calculator;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            double num1 = Double.parseDouble(request.getParameter("num1"));
            double num2 = Double.parseDouble(request.getParameter("num2"));
            String operation = request.getParameter("operation");
            double result = 0;

            switch (operation) {
                case "add":
                    result = num1 + num2;
                    break;
                case "sub":
                    result = num1 - num2;
                    break;
                case "mul":
                    result = num1 * num2;
                    break;
                case "div":
                    if (num2 != 0) {
                        result = num1 / num2;
                    } else {
                        out.println("<h3 style='color:red'>Error: Cannot divide by zero!</h3>");
                        return;
                    }
                    break;
                default:
                    out.println("<h3 style='color:red'>Invalid operation!</h3>");
                    return;
            }

            out.println("<h2>Calculation Result</h2>");
            out.println("<p>" + num1 + " " + getOperatorSymbol(operation) + " " + num2 + " = <b>" + result + "</b></p>");
        } catch (NumberFormatException e) {
            out.println("<h3 style='color:red'>Invalid input. Please enter numeric values.</h3>");
        }
    }

    private String getOperatorSymbol(String operation) {
        switch (operation) {
            case "add": return "+";
            case "sub": return "-";
            case "mul": return "×";
            case "div": return "÷";
            default: return "";
        }
    }
}
