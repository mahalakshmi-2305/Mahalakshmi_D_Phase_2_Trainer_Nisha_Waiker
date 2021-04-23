package com.dao.teachers;

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
 * Servlet implementation class addteachersSer
 */
public class addteachersSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addteachersSer() {
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
			
			int teacher_id=0;
			String teacher_name=request.getParameter("tname");
						
			String sql="insert into teachers(teacher_id,teacher_name) values(?,?) ";						
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");
					
			PreparedStatement ps =connection.prepareStatement(sql);
			ps.setInt(1, teacher_id);
			ps.setString(2,teacher_name);
					
			
			int value=ps.executeUpdate();
			if(value!=0) {
				response.sendRedirect("admindashboard.jsp");
			}
			
		
		} catch (Exception e) {
			out.print("Details Not added");
		}
		
		
		
	}

}
