package com.Student;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/signin1")
public class teacher_signin extends HttpServlet{

	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String uname=request.getParameter("name");
		String upassword=request.getParameter("password");
		teacher_signinDAO sg=new teacher_signinDAO();
		if(sg.check(uname, upassword))
		{
		HttpSession session=request.getSession();
		session.setAttribute("name", uname);
		response.sendRedirect("teacher_att.jsp");
		}
		else
		{
			response.sendRedirect("teacher_signin.jsp");
		}
	}
}
