package com.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class roll_noDAO {

	public void check(String uname,String uroll_no)
	{	
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		String query="insert into roll_no_info values (?,?,?,?)";
		String url="jdbc:mysql://localhost:3306/Student";		
	    Connection con=DriverManager.getConnection(url, "root", "root");
	    PreparedStatement st=con.prepareStatement(query);
		st.setString(1, uname);
		st.setString(2, uroll_no);
		st.setInt(3,0);
		st.setInt(4,0);
		st.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}	
	}
}
