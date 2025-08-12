package feedback;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		PrintWriter out=res.getWriter();
		String Name=req.getParameter("name");
		String Course=req.getParameter("course");
		String PaperName=req.getParameter("paper");
		String PaperCode=req.getParameter("papercode");
		String Rating=req.getParameter("my-selection");
		String Comment=req.getParameter("comment");
		
		 HttpSession session = req.getSession();
		 session.setAttribute("Name", Name);
		 session.setAttribute("Course", Course);
		 session.setAttribute("PaperName", PaperName);
		 session.setAttribute("PaperCode", PaperCode);
		 session.setAttribute("Rating", Rating);
		 session.setAttribute("Comment", Comment);
	        res.sendRedirect("sessionAccept");
	}

}
