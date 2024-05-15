package com.fyp.controller.login;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.fyp.model.bean.login;
import com.fyp.model.Dao.login.LoginDAO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDAO loginDao;

    public void init() {
        loginDao = new LoginDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Create a new login object with username and password
        login loginBean = new login(username, password, null); // Assuming category is not known at this point

        try {
            if (loginDao.validate(loginBean)) {
                String category = loginBean.getCategory();
                if (category != null) {
                    switch (category) {
                        case "admin":
                            response.sendRedirect("Admin/Dashboard-Admin.jsp");
                            break;
                        case "student":
                            response.sendRedirect("Students/student.jsp");
                            break;
                        case "lecturer":
                            response.sendRedirect("Lecturers/Dashboard-Lecturer.jsp");
                            break;
                        default:
                            response.sendRedirect("generic.jsp");
                            break;
                    }
                } else {
                    response.sendRedirect("generic.jsp");
                }
            } else {
                response.sendRedirect("login.jsp?error=invalid");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
