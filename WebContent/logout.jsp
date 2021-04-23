<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout page</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
 <%
    session.invalidate();
 %>
<h1><font color="Red">You are Sucessfully logged out...</font></h1>

        <a href="home.html">Go-Back To Home Page</a>
</body>
</html>