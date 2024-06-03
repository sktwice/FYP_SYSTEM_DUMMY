/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.fyp.pastreport;


import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.fyp.pastreport.AddPastReportDAO;
import com.fyp.model.bean.pastReport;

import java.sql.Date;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;


public class AddPastReportServlet extends HttpServlet {
    
    
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect to the form JSP page
        request.getRequestDispatcher("/Add-New-Past-Report-Admin.jsp").forward(request, response);
    }

   
      @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            int pro_id = Integer.parseInt(request.getParameter("pro_id"));
            int stu_id = Integer.parseInt(request.getParameter("student_id"));
            int l_id = Integer.parseInt(request.getParameter("l_id"));
            String pro_title = request.getParameter("pro_title");
            
            String sessionStr = request.getParameter("session");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date session = new Date(dateFormat.parse(sessionStr).getTime());

            pastReport report = new pastReport(pro_id, stu_id, l_id, pro_title, session);
            AddPastReportDAO dao = new AddPastReportDAO();
            dao.AddPastReport(report);

          
            response.sendRedirect("sucess.jsp");
            
            
        } catch (ParseException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}