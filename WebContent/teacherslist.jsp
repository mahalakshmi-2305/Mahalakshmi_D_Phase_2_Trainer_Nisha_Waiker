<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teachers list</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
<section>
<br><br>
<h1>Teachers Details</h1>
<br>
<%
try{
	String sql="select * from teachers ";						
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");
			
	PreparedStatement ps =connection.prepareStatement(sql);
	ResultSet rs=ps.executeQuery(sql);
	
%>
<table align="center" border="1" width="800">
<thead >
<tr bordercolor="black">
<th width="150"><b>Teacher_Id</b></th>
<th width="300"><b>Teacher Name</b></th>
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