/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.fyp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.fyp.connection.MySqlConnection;
import com.fyp.model.Dao.loginDao;

/**
 *
 * @author User
 */
public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String role = request.getParameter("role");
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    loginDao loginDAO = new loginDao();

    boolean isValidUser = false;
    if ("student".equals(role)) {
        isValidUser = loginDAO.validateStudent(username, password);
    } else if ("staff".equals(role)) {
        isValidUser = loginDAO.validateLecturer(username, password);
    }

    if (isValidUser) {
        request.getSession().setAttribute("username", username);
        response.sendRedirect("index.jsp");
    } else {
        // Invalid credentials, redirect to login page with error message
        response.sendRedirect("login-failure.jsp");
    }
}
}
