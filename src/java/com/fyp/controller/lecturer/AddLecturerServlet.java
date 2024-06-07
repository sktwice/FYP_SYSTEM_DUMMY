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
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/RegisterLecturerServlet")
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
            List<Faculty> facultyList = AL.listFaculty();
            List<String> courseList = AL.courseList();
            request.setAttribute("facultyList", facultyList);
            request.setAttribute("courseList", courseList);
            request.getRequestDispatcher("/Admin/Add-Lecturer.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Integer adminId = (Integer) session.getAttribute("admin_id");
        if (adminId == null) {
            response.sendRedirect("RegisterLecturerServlet");
            return;
        }

        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String position = request.getParameter("position");
            String l_image = request.getParameter("l_image");
            String l_name = request.getParameter("l_name");
            int phone_num = Integer.parseInt(request.getParameter("phone_num"));
            String email = request.getParameter("email");
            int f_id = Integer.parseInt(request.getParameter("f_id"));
            String l_course = request.getParameter("l_course");

            int login_id = AL.generateId();
            int l_id = AL.generateId();

            Login lo = new Login(username, password, "lecturer");
            lo.setLoginId(login_id); // Set the generated login ID

            Faculty f = AL.getFacultyById(f_id);
            if (f == null) {
                throw new Exception("Faculty not found with ID: " + f_id);
            }

            Lecturer l = new Lecturer(l_id, f_id, login_id, adminId, position, l_image, l_name, phone_num, email, l_course);
            AL.registerLecturer(lo, f, l);

            
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
