package com.dao.classes;

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
 * Servlet implementation class addclassesSer
 */
public class addclassesSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addclassesSer() {
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
			
			int class_id=0;
			String class_name=request.getParameter("classname");
			String subject_name=request.getParameter("subject");
			String teacher_name=request.getParameter("teacher");
			
			String sql="insert into classes(class_id,class_name,subject_name,teacher_name) values(?,?,?,?)";						
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");
					
			PreparedStatement ps =connection.prepareStatement(sql);
			ps.setInt(1,class_id);
			ps.setString(2, class_name);
			ps.setString(3, subject_name);
			ps.setString(4, teacher_name);
			
			
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

