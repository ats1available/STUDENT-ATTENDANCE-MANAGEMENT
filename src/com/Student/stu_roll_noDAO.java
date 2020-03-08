package com.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class stu_roll_noDAO {

public String roll_no(String name,String password)
{
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		String query="select * from student_info where name=? and password=?";
		String url="jdbc:mysql://localhost:3306/Student";		
	    Connection con=DriverManager.getConnection(url, "root", "root");
	    PreparedStatement st=con.prepareStatement(query);
		st.setString(1, name);
		st.setString(2, password);
		ResultSet rs=st.executeQuery();
		if(rs.next())
		{
			return rs.getString("roll_no");
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	    return null;
	}	

}
