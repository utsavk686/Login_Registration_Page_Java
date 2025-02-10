package com.wipro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JDBCServlet
 */
@WebServlet("/Login")
public class Login extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            PrintWriter pw = response.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/wipro?useSSL=false", "root", "root");

            // Query to check if email and password match
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM datareg WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	RequestDispatcher rd = request.getRequestDispatcher("/LoginWelcome.jsp");
            	rd.forward(request, response);
        		
            } else {
                // If no matching record is found, show login failure
            	RequestDispatcher rd = request.getRequestDispatcher("/LoginFailed.jsp");
            	rd.forward(request, response);
        		
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
