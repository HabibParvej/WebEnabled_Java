package session;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/sessionEx")
public class sessionEx extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {
        
        int i = Integer.parseInt(req.getParameter("num1"));
        int j = Integer.parseInt(req.getParameter("num2"));
        int m = i + j;
        
        HttpSession session = req.getSession();
        session.setAttribute("key", m);
        
        res.sendRedirect("sessionAccept");
    }
}