<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students List</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
<section>
<br><br>
<h1>Students List</h1>
<br>
<%
try{
	String sql="select * from students ";						
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");
			
	PreparedStatement ps =connection.prepareStatement(sql);
	ResultSet rs=ps.executeQuery(sql);
	
%>
<table align="center" border="1" width="1000">
<thead >
<tr bordercolor="black">
<th width="100"><b>student_id</b></th>
<th width="300"><b>Roll_No</b></th>
<th width="400"><b>Student Name</b></th>
<th width="400"><b>Date_Of_Birth</b></th>
<th width="300"><b>Class_of_Student</b></th>
</tr>
</thead>

<tbody>
<%
while(rs.next()) 
{
%>
<tr>
<td width="100"><%= rs.getString(1) %></td>
<td width="500"><%= rs.getString(2) %></td>
<td width="200"><%= rs.getString(3) %></td>
<td width="200"><%= rs.getString(4) %></td>
<td width="200"><%= rs.getString(5) %></td>

</tr>
<% } %>

</tbody>
</table>

<%	
}catch(Exception e){
	e.printStackTrace();
}

%>
<br>
<form action="admindashboard.jsp">
<button> Back</button>
</form>
</section>

</body>
</html>