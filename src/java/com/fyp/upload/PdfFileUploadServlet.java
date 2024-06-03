/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package com.fyp.upload;

import com.fyp.model.bean.PdfFile;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;


@MultipartConfig
public class PdfFileUploadServlet extends HttpServlet {

    private PDFDAO pdfFileDao = new PDFDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part filePart = request.getPart("pdfFile");
        String originalFileName = filePart.getSubmittedFileName();
        String fileName = "pdf_" + System.currentTimeMillis() + ".pdf"; // Rename the PDF file
        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + "pdfs";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        String filePath = uploadPath + File.separator + fileName;

        try (InputStream inputStream = filePart.getInputStream();
             FileOutputStream outputStream = new FileOutputStream(new File(filePath))) {
            int read;
            final byte[] bytes = new byte[1024];
            while ((read = inputStream.read(bytes)) != -1) {
                outputStream.write(bytes, 0, read);
            }
        }

        PdfFile pdfFile = new PdfFile();
        pdfFile.setFileName(fileName);
        pdfFile.setFilePath(filePath);
        try {
            pdfFileDao.savePdfFile(pdfFile);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("pdfFile", pdfFile);
        request.getRequestDispatcher("uploadPdf.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("uploadPdf.jsp").forward(request, response);
    }
}


