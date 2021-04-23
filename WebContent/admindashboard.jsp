<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin dashboard</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
<header>

<a href="home.html">Home</a>

<div class="timetable" id="m">
	<button class="table" ><u>Subjects</u></button>
	 <div class="timetable-content">
		<a href="addsubjects.jsp" class="table1">Add Subjects</a>
   	    <a href="subjectslist.jsp" class="table2">Subjects list</a>
       
     </div>
</div>

<div class="timetable" id="m">
	<button class="table" ><u>Teachers</u></button>
	 <div class="timetable-content">
		<a href="addteachers.jsp" class="table1">Add Teachers</a>
   	    <a href="teacherslist.jsp" class="table2">Teachers list</a>
       
     </div>
</div>

<div class="timetable" id="m">
	<button class="table" ><u>Classes</u></button>
	 <div class="timetable-content">
		<a href="addclasses.jsp" class="table1">Add Classes</a>
   	    <a href="classes_list.jsp" class="table2">Classes Details</a>
       
     </div>
</div>

<div class="timetable" id="m">
	<button class="table" ><u>Students</u></button>
	 <div class="timetable-content">
		<a href="addstudents.jsp" class="table1">Add Students</a>
   	    <a href="studentslist.jsp" class="table2">Students details</a>
       
     </div>
</div>

<a id="logout" href="logout.jsp" >Logout</a>


</header>
<section id="image">


</section>
<footer>

</footer>
</body>
</html>