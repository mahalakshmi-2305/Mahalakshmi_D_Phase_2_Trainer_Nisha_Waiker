package com.dao.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addstudentsSer
 */
public class addstudentsSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addstudentsSer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=ISO-8859-1" );
		PrintWriter out=response.getWriter();	
		try{
			
			int student_id=0;
			String roll_no=request.getParameter("rollno");
			String student_name=request.getParameter("stuname");
			String date_of_birth=request.getParameter("dob");
			String class_for_student=request.getParameter("class");
			
			String sql="insert into students(student_id,roll_no,student_name,date_of_birth,class_for_student) values(?,?,?,?,?)";						
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");
					
			PreparedStatement ps =connection.prepareStatement(sql);
			ps.setInt(1, student_id);
			ps.setString(2, roll_no);
			ps.setString(3, student_name);
			ps.setString(4, date_of_birth);
			ps.setString(5, class_for_student);
			
			int value=ps.executeUpdate();
			if(value!=0) {
			
			response.sendRedirect("admindashboard.jsp");
			}
			
		
		} catch (Exception e) {
			e.printStackTrace();
			out.print("Details not Added");
		}
		
	}

}
