/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.fyp.upload;

/**
 *
 * @author Acer
 */
import com.fyp.model.bean.Image;
import com.fyp.upload.ImageDAO;
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
public class ImageUploadServlet extends HttpServlet {

    private ImageDAO imageDao = new ImageDAO ();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part filePart = request.getPart("image");
        String fileName = filePart.getSubmittedFileName();
        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + "images";
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

        Image image = new Image(0, fileName, filePath);
        try {
            // Save the image to get the generated ID
            imageDao.saveImage(image);

            // Get the generated ID
            int imageId = image.getId();

            // Create new filename with ID and "img" appended
            String newFileName = imageId + "img" + getFileExtension(fileName);
            String newFilePath = uploadPath + File.separator + newFileName;

            // Rename the file
            File oldFile = new File(filePath);
            File newFile = new File(newFilePath);
            if (oldFile.renameTo(newFile)) {
                // Update the image path and name in the database
                image.setFileName(newFileName);
                image.setFilePath(newFilePath);
                imageDao.updateImage(image);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("image", image);
        request.getRequestDispatcher("display.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("upload.jsp").forward(request, response);
    }

    // Utility method to get file extension
    private String getFileExtension(String fileName) {
        if (fileName.lastIndexOf(".") != -1 && fileName.lastIndexOf(".") != 0) {
            return fileName.substring(fileName.lastIndexOf("."));
        } else {
            return "";
        }
    }
}

