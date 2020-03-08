 package com.Student;
        
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
        
        
        
@WebServlet("/Login")
public class Login extends HttpServlet {
        
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("name");
		String uemail=request.getParameter("email");
		String uroll_no=request.getParameter("roll_no");
		String upassword=request.getParameter("password");
		String ure_password=request.getParameter("re_password");
		if(upassword.equals(ure_password))
		{
			LoginDAO dao=new LoginDAO();
			dao.check(uname, uemail,uroll_no, upassword);
			roll_noDAO dao1=new roll_noDAO();
			dao1.check(uname,uroll_no);
			HttpSession session=request.getSession();
			session.setAttribute("name", uname);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.sendRedirect("signup.jsp");
		}
	}    
        
}        
        