<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Subjects</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
<section>
<br><br>
<h1>Add Subjects here</h1><br/>

<form action="addsubjectsSer" method="post">

<input type="text" name="subname" placeholder=" Enter the Subject Name" required="required" />
<br/><br>
<input type="text" name="subcode" placeholder="Enter the Subject Code" required="required"  />
<br/><br>

<input type="submit" value="Submit"/>
<input type="reset" value="Reset">
<br>

</form>
<form action="admindashboard.jsp">
<button id="cancel">&#8617;</button>
</form>

</section>
</body>
</html>