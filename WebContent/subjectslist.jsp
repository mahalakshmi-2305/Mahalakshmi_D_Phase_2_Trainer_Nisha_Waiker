<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subjects List</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
<section>
<br><br>
<h1>Subjects Details</h1>
<br>
<%
try{
	String sql="select * from subjects order by subject_name  ";						
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");
			
	PreparedStatement ps =connection.prepareStatement(sql);
	ResultSet rs=ps.executeQuery(sql);
	
%>
<table border="1" align="center" width="800">
<thead >
<tr bordercolor="black">
<th width="100"><b>Subject_Id</b></th>
<th width="500"><b>Subject Name</b></th>
<th width="200"><b>Subject Code</b></th>

</tr>
</thead>

<tbody>
<%
while(rs.next()) 
{
%>
<tr>
<td width="100"><%= rs.getString(1) %> </td>
<td width="500"><%= rs.getString(2) %></td>
<td width="200"><%= rs.getString(3) %></td>

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