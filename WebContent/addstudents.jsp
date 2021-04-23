<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Students</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
<section>

<br><br>

<h1>Add Students here</h1><br/>
<%
try{
	String sql="select distinct(class_name) from classes order by class_name asc";						
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");
			
	PreparedStatement ps =connection.prepareStatement(sql);
	ResultSet rs=ps.executeQuery(sql);
	
%>
<form action="addstudentsSer" method="post">

<input type="text" name="rollno" placeholder="Roll No" required="required" />
<br/><br>
<input type="text" name="stuname" placeholder="Student Name" required="required" />
<br/><br>
<table id="dob">
	<tr><td align="left" height="35px">Date of Birth &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
		<td align="right"><input type="date" name="dob" /></td>
	</tr>
</table>
<br>
<table id="class" >
	<tr><td align="left" height="35px"><label for="class">Assign class for Subject : </label></td>
	<td><select name="class" id="ClassName" required="required">
 			<option>  --Choose Class--</option>	
<%
while(rs.next()) 
{
%>
 		<option><%=rs.getString("class_name") %>	</option>	
<%
	}
%>
</select></td></tr>

<%	
}catch(Exception e){
	e.printStackTrace();
}

%>

</table>

<br>
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