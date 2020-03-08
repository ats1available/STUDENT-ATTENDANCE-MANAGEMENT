package com.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginDAO {
	
	public void check(String uname,String uemail,String uroll_no,String upassword)
	{	
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		String query="insert into student_info values (?,?,?,?)";
		String url="jdbc:mysql://localhost:3306/Student";		
	    Connection con=DriverManager.getConnection(url, "root", "root");
	    PreparedStatement st=con.prepareStatement(query);
		st.setString(1, uname);
		st.setString(2, uemail);
		st.setString(3, uroll_no);
		st.setString(4, upassword);
		st.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}	
	}
}
