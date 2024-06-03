/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.fyp.pastreport;

import com.fyp.model.bean.PdfFile;
import com.fyp.model.bean.pastReport;
import com.fyp.model.bean.Lecturer;
import com.fyp.upload.PDFDAO;
import com.fyp.pastreport.AddPastReportDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

@MultipartConfig
public class AddPastReportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AddPastReportDAO PR;
    private PDFDAO PDF;

    public void init() {
        PR = new AddPastReportDAO();
        PDF = new PDFDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Lecturer> listLecturer = PR.listLecturer();
            request.setAttribute("lecturerList", listLecturer);
            request.getRequestDispatcher("Admin/Add-New-Pass-Report-Admin.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Cannot obtain lecturers from DB", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int proId = Integer.parseInt(request.getParameter("pro_id"));
            int studentId = Integer.parseInt(request.getParameter("student_id"));
            int lId = Integer.parseInt(request.getParameter("l_id"));
            String proTitle = request.getParameter("pro_title");
            String session = request.getParameter("session");

            Part filePart = request.getPart("pdfFile");
            String fileName = getFileName(filePart);
            String filePath = getServletContext().getRealPath("/") + "uploads" + File.separator + fileName;

            try (FileOutputStream fos = new FileOutputStream(filePath);
                 InputStream is = filePart.getInputStream()) {
                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = is.read(buffer)) != -1) {
                    fos.write(buffer, 0, bytesRead);
                }
            }

            pastReport report = new pastReport(proId, studentId, lId, proTitle, session);
            //PdfFile  pdf = new PdfFile(fileName, filePath);

            
            PR.addPastReport(report);
            ///PR.addPdfFile(pdf);

            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    private String getFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        String[] tokens = contentDisposition.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf('=') + 2, token.length() - 1);
            }
        }
        return "";
    }
}


