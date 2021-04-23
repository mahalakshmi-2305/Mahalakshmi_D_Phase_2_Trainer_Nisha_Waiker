<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Teachers</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
<section>
<br/><br/>
<h1>Add Teachers here</h1><br/>


<form action="addteachersSer" method="post">

<input type="text" name="tname" placeholder=" Enter the Teacher Name" required="required" />
<br/><br>


<input type="submit" value="Submit"/>
<input type="reset" value="Reset">
</form>
<form action="admindashboard.jsp">
<button id="cancel">&#8617;</button>
</form>
</section>
</body>
</html>