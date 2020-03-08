package com.Student;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/signin")
public class signin extends HttpServlet{

	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String uname=request.getParameter("name");
		String upassword=request.getParameter("password");
		signinDAO sg=new signinDAO();
		if(sg.check(uname, upassword))
		{
		stu_roll_noDAO st=new stu_roll_noDAO();
		
		HttpSession session=request.getSession();
		session.setAttribute("name", uname);
		session.setAttribute("roll_no",st.roll_no(uname, upassword));
		response.sendRedirect("attendance.jsp");
		}
		else
		{
			response.sendRedirect("signin.jsp");
		}
	}
}
