<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Classes details</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

<section>
<br><br>
<h1>Classes Details</h1>
<br>
<%
try{
	String sql="select c.*,s.*,t.* from classes as c inner join subjects as s on (c.class_id=s.subject_id) left join teachers as t on (s.subject_id=t.teacher_id)";						
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");
			
	PreparedStatement ps =connection.prepareStatement(sql);
	ResultSet rs=ps.executeQuery(sql);
	
%>
<table align="center" border="1" width="1000">
<thead >
<tr bordercolor="black">
<th width="100"><b>Class_Id</b></th>
<th width="300"><b>Class Name</b></th>
<th width="400"><b>Subject Name</b></th>
<th width="400"><b>Teacher Name</b></th>

</tr>
</thead>

<tbody>
<%
while(rs.next()) 
{
%>
<tr>
<td width="100"><%= rs.getString("class_id") %></td>
<td width="500"><%= rs.getString("class_name") %></td>
<td width="200"><%= rs.getString("subject_name") %></td>
<td width="200"><%= rs.getString("teacher_name") %></td>


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