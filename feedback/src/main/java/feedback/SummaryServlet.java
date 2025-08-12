package feedback;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/sessionAccept")
public class SummaryServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {
		
		
		HttpSession session = req.getSession();
        session.setMaxInactiveInterval(1 * 60); // 1 minute timeout
        
        String Name = (String) session.getAttribute("Name");
        String Course = (String) session.getAttribute("Course");
        String PaperName = (String) session.getAttribute("PaperName");
        String PaperCode = (String) session.getAttribute("PaperCode");
        String Rating = (String) session.getAttribute("Rating");
        String Comment = (String) session.getAttribute("Comment");
       
        
        PrintWriter out = res.getWriter();
        out.println("Name is : " + Name);
        out.println("Course : " + Course);
        out.println("PaperName : " + PaperName);
        out.println("PaperCode : " + PaperCode);
        out.println("Rating : " + Rating);
        out.println("Comment : " + Comment);
	}

}
