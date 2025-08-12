package login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login extends HttpServlet {
	
public void service(HttpServletRequest req, HttpServletResponse res) throws IOException
{
	PrintWriter out=res.getWriter();
	String uname=req.getParameter("unm");
	String pass=req.getParameter("pass");
	if(uname.equals("admin") && pass.equals("1234"))
	{
		req.setAttribute("unm", uname);
		RequestDispatcher rd = req.getRequestDispatcher("nextS"); 
	}
	else
		out.print("Login Failed");
	

}}