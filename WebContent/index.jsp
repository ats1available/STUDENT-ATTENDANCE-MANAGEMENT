<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style> 
input[type=button], input[type=submit], input[type=reset] {
  background-color: #DF6589FF;
  border: none;
  color: #3C1053FF;
  padding: 16px 120px;
  text-decoration: none;
  margin: 1px -1px;
  cursor: pointer;
}
</style>
<style>
body {
  background-image: url('images/school2.jpg');
}
</style>
</head>
<body >


<center>
<h1>
</h1>
<span style="display:inline-block;color: #38761d;font-weight:1000;font-size:39px;margin: 100px;">ATTENDANCE MANAGEMENT SYSTEM</span>
<input type="submit" value="admin" onclick="location.href='teacher_signin.jsp'">
<input type="submit" value="Student" onclick="location.href='signup.jsp'" >
</center>
</body>
</html>