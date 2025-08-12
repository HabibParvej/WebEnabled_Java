package session;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/sessionAccept")
public class sessionNext extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {
        
        HttpSession session = req.getSession();
        session.setMaxInactiveInterval(1 * 60); // 1 minute timeout
        
        int i = (int) session.getAttribute("key");
        i++;
        
        PrintWriter out = res.getWriter();
        out.println("Incremented i is: " + i);
    }
}