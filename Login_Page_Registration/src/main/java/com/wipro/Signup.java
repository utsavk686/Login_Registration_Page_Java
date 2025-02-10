package com.wipro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterPerson
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String pname = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String country = request.getParameter("country");
		
		int age = Integer.parseInt(request.getParameter("age"));
		PrintWriter out = response.getWriter();
		
		try {
//			PrintWriter out = response.getWriter();
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/wipro?useSSL=false","root","root");
			
			PreparedStatement ps = connection.prepareStatement("INSERT into datareg VALUES(?,?,?,?,?)");
			
			ps.setString(1, pname);
			ps.setString(2, email);
			ps.setString(3,  password);
			ps.setInt(4, age);
			ps.setString(5, country);
			
			
			int x = ps.executeUpdate();
			if(x>0) {
				 RequestDispatcher rsd = request.getRequestDispatcher("/signupWelcome.jsp");
	              rsd.forward(request, response);
			}
			connection.close();
		}catch(Exception e) {
			out.print(e.getMessage());
		}
		
		
	}

}
