<%@ page
		language="java"
		contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
		
		<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Classes Page</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

<section>
<br> <br>
<h1>Add Classes here</h1>
<br />
<%
try{
	String sql="select subject_name from subjects";						
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");
			
	PreparedStatement ps =connection.prepareStatement(sql);
	ResultSet rs=ps.executeQuery(sql);
	
%>
<form action="addclassesSer" method="post">

<input type="text" name="classname" placeholder="Class Name" required="required" /> <br /> 
<table id="subject">
	<tr><td align="left" height="35px"><label for="class">Select Subject to Class : </label></td>
	<td><select name="subject" id="SubjectName" required="required">
 			<option disabled="disabled" selected>  --Select Subject--</option>		
<%
while(rs.next()) 
{
%>
 		<option><%=rs.getString("subject_name") %>	</option>	
<%
	}
%>
</select></td></tr>
<br>
<%	
}catch(Exception e){
	e.printStackTrace();
}

%> 
</table>


<%
try{
	String sql="select teacher_name from teachers";						
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");
			
	PreparedStatement ps =connection.prepareStatement(sql);
	ResultSet rs=ps.executeQuery(sql);
	
%>


<table id="subject">
	<tr><td align="left" height="35px"><label for="class">Select Teacher to Class : </label></td>
	<td><select name="teacher" id="TeacherName" required="required">
 			<option disabled="disabled" selected>  --Select Teacher--</option>		
<%
while(rs.next()) 
{
%>
 		<option><%=rs.getString("teacher_name") %>	</option>	
<%
	}
%>
</select></td></tr>
<br>
<%	
}catch(Exception e){
	e.printStackTrace();
}

%> 
</table>




<br>  
<input type="submit" value="Submit" /> 
<input type="reset" value="Reset" /> <br>
</form>
<form action="admindashboard.jsp">
	<button id="cancel">&#8617;</button>
</form>

</section>

</body>
</html>