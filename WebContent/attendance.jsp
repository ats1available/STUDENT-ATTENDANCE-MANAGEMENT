<!DOCTYPE html>
<html lang="en">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                <%!int abs,pre; %>
                <%
				if(session.getAttribute("name")==null)
				{
				response.sendRedirect("index.jsp");
				}
				response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
				%>
				<h1>HI <% if(session.getAttribute("name")!=null){String str=session.getAttribute("name").toString();
				out.print(str.toUpperCase());} %>!! YOUR ATTENDANCE IS 
				<%
				if(session.getAttribute("name")!=null){
				String name=session.getAttribute("name").toString();
				String roll_no=session.getAttribute("roll_no").toString();
				try {
					
					Class.forName("com.mysql.jdbc.Driver");
					String query="select * from roll_no_info where name=? and roll_no=?";
					String url="jdbc:mysql://localhost:3306/Student";		
				    Connection con=DriverManager.getConnection(url, "root", "root");
				    PreparedStatement st=con.prepareStatement(query);
					st.setString(1, name);
					st.setString(2, roll_no);
					ResultSet rs=st.executeQuery();
					if(rs.next())
					{
						pre=rs.getInt("present");
						abs=rs.getInt("absent");
						if(rs.getInt("present")!=0||rs.getInt("absent")!=0)
						out.print((float)rs.getInt("present")/(float)(rs.getInt("present")+rs.getInt("absent"))*100);
						else
							out.print('0');
					}
					}catch(Exception e)
					{
						e.printStackTrace();
					}}
				 
				%>% SO FAR<br>PRESENT: <% out.print(pre+" DAYS"); %><br>ABSENT: <%out.print(abs+" DAYS"); %> </h1>
                    <form action="logout" method="POST" id="signup-form" class="signup-form">
                        
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="logout"/>
                        </div>
                    </form>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>