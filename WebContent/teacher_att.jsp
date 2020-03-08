<!DOCTYPE html>
<html lang="en">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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


<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
if(session.getAttribute("name")==null)
{
		response.sendRedirect("index.jsp");
}
/* String id = request.getParameter("userId"); */
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "student";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>
<%!String name,roll_no; %>
<h2 align="center"><font><strong>Record of Students</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>name</b></td>
<td><b>roll_no</b></td>
<td><b>present</b></td>
<td><b>absent</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM roll_no_info";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){name=resultSet.getString("name");roll_no=resultSet.getString("roll_no");
%>
<tr bgcolor="#DEB887">
<form method="post" action="">
<td>
    <input type="text" name="name" value="<%out.print(name); %>" readonly>
</td>

<td>
    <input type="text" name="roll_no" value=<%=roll_no %> readonly>
</td>
    <td><center><input type="submit" value="present" formaction="student_present.jsp"></center></td>
	<td><center><input type="submit" value="absent" formaction="student_absent.jsp"></center></td>
</form>
</tr>

<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table><br>
						<div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="logout" onclick="location.href='teacher_logout.jsp'"/>
                        </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>