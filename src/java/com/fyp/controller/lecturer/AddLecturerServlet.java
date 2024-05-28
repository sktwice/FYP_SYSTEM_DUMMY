/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.fyp.controller.lecturer;



import com.fyp.model.bean.Lecturer;
import com.fyp.model.bean.Login;
import com.fyp.model.bean.Faculty;
import com.fyp.lecturer.dao.AddLecturerDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.List;
import java.io.IOException;
import java.sql.SQLException;



public class AddLecturerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AddLecturerDAO AL;

    @Override
    public void init() {
        AL = new AddLecturerDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            System.out.println("Inside doGet method of AddLecturerServlet"); // Add this line for debugging
            List<Faculty> facultyList = AL.listFaculty();
            request.setAttribute("facultyList", facultyList);
            request.getRequestDispatcher("/Admin/Add-Lecturer.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password"); 
            String position = request.getParameter("position");
            String l_image = request.getParameter("l_image");
            String l_name = request.getParameter("l_name");
            int phone_num = Integer.parseInt(request.getParameter("phone_num"));
            String email = request.getParameter("email");
           
            int admin_id = Integer.parseInt(request.getParameter("admin_id"));

            int f_id = Integer.parseInt(request.getParameter("f_id"));
            String l_course = request.getParameter("f_course");
            
            
            int login_id = AL.generateId();
            int l_id = AL.generateId();

            Login lo = new Login(username, password, "lecturer");
            lo.setLoginId(login_id); // Set the generated login ID

            Faculty f = AL.getFacultyById(f_id);
            if (f == null) {
                throw new Exception("Faculty not found with ID: " + f_id);
            }

            Lecturer l = new Lecturer(l_id, f_id, login_id, admin_id, position, l_image, l_name, phone_num, email, l_course);
            AL.registerLecturer(lo, f, l);
            
           
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}