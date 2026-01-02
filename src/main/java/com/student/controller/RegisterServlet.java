package com.student.controller;

import com.student.util.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String yearStr = request.getParameter("year");
        
        String message = "";
        
        if (name == null || name.trim().isEmpty() || 
            email == null || email.trim().isEmpty() || 
            yearStr == null || yearStr.trim().isEmpty()) {
            
            message = "All fields are required.";
            request.setAttribute("message", message);
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        try {
            int year = Integer.parseInt(yearStr);
            
            try (Connection conn = DBConnection.getConnection()) {
                String sql = "INSERT INTO students (name, email, year) VALUES (?, ?, ?)";
                try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                    pstmt.setString(1, name);
                    pstmt.setString(2, email);
                    pstmt.setInt(3, year);
                    
                    pstmt.executeUpdate();
                    
                    response.sendRedirect("show_all");
                    return; 
                }
            }
        } catch (NumberFormatException e) {
            message = "Year must be a number.";
        } catch (SQLException e) {
            if (e.getMessage().contains("Duplicate entry")) {
                message = "Email already registered.";
            } else {
                message = "Database error: " + e.getMessage();
            }
        } catch (Exception e) {
            message = "Error: " + e.getMessage();
        }

        request.setAttribute("message", message);
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
}
