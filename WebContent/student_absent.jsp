<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("name")==null)
{
		response.sendRedirect("index.jsp");
}
String uname=request.getParameter("name");
String uroll_no=request.getParameter("roll_no");
out.print(uname);

try {
	
	Class.forName("com.mysql.jdbc.Driver");
	String query="select * from roll_no_info where name=? and roll_no=?";
	String url="jdbc:mysql://localhost:3306/Student";		
    Connection con=DriverManager.getConnection(url, "root", "root");
    PreparedStatement st=con.prepareStatement(query);
	st.setString(1, uname);
	st.setString(2, uroll_no);
	ResultSet rs=st.executeQuery();
	while(rs.next())
	{
		
		int absent=rs.getInt("absent");
		absent++;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String query1="update roll_no_info set absent='"+absent+"' where name='"+uname+"' and roll_no='"+uroll_no+"'";
			String url1="jdbc:mysql://localhost:3306/Student";		
		    Connection con1=DriverManager.getConnection(url1, "root", "root");
		    PreparedStatement st1=con1.prepareStatement(query1);
			st1.executeUpdate();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
	}
	}catch(Exception e)
	{
		e.printStackTrace();
	}
     response.sendRedirect("teacher_att.jsp");
%>
</body>
</html>