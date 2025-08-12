package login;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class nextServlet extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		
		String uname=req.getAttribute("unm").toString();
		
		PrintWriter out=res.getWriter();
		
		out.print("Welcomeee"+uname);
	}
	

}
