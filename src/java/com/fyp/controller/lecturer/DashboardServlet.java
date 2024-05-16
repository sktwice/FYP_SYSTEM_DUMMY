package com.fyp.controller.lecturer;

import com.fyp.model.Dao.lecturer.DashboardDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "Dashboard_LecturerServlet", urlPatterns = {"/Dashboard_LecturerServlet"})
public class DashboardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DashboardDAO dash;
    
    public void init() {
        dash = new DashboardDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int totalStudents = dash.getTotalStudents();
            request.setAttribute("totalStudents", totalStudents);
            request.getRequestDispatcher("Lectures/Dashboard-Lecturer.jsp").forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to retrieve total students");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
