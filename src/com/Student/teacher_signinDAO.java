package com.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

public class teacher_signinDAO {
public boolean check(String name,String password)
{
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		String query="select * from teacher_info where name=? and password=?";
		String url="jdbc:mysql://localhost:3306/Student";		
	    Connection con=DriverManager.getConnection(url, "root", "root");
	    PreparedStatement st=con.prepareStatement(query);
		st.setString(1, name);
		st.setString(2, password);
		ResultSet rs=st.executeQuery();
		if(rs.next())
		{
			return true;
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	    return false;
	}	

}
