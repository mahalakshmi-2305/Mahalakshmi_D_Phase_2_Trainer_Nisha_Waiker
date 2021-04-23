package com.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class loginServlet
 */
public class adminloginSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	
    
    public adminloginSer() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=ISO-8859-1");
		try{
			String username=request.getParameter("u");
			String password=request.getParameter("p");
			String dbName=null;
			String dbPassword=null;
			String sql ="select * from adminlogin where username=? and password=? ";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy2","root","root");

			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1,username);
			ps.setString(2,password);
			ResultSet rs= ps.executeQuery();
			PrintWriter out=response.getWriter();
			while(rs.next()) {
				dbName=rs.getString(1);
				dbPassword=rs.getString(2);
						
			}
			
			if(username.equals(dbName) && password.equals(dbPassword)) {
					
				response.sendRedirect("admindashboard.jsp");
//				out.print("logged in");
				
			}else {
				
				out.print("<b><font color='red'> Username and Password incorrect!</font></b>");
				out.print("<html><body>");
				out.print("<a href='index.jsp'>Back</a>");
				out.print("</body></html>");
				
				
								
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	

}
