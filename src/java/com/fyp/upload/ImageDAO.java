/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.fyp.upload;

import com.fyp.model.bean.Image;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ImageDAO{

    // Database connection details
    private String jdbcURL = "jdbc:mysql://localhost:3306/sample?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "faris161102"; // Change to your MySQL password

    // SQL queries
    private static final String INSERT_IMAGE_SQL = "INSERT INTO images (file_name, file_path) VALUES (?, ?)";
    private static final String SELECT_IMAGE_BY_ID = "SELECT id, file_name, file_path FROM images WHERE id = ?";
    private static final String SELECT_ALL_IMAGE_IDS = "SELECT id FROM images";
    private static final String UPDATE_IMAGE_SQL = "UPDATE images SET file_name = ?, file_path = ? WHERE id = ?";

    // Establish database connection
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    // Save image to the database and set its ID
    public void saveImage(Image image) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_IMAGE_SQL, PreparedStatement.RETURN_GENERATED_KEYS)) {
            preparedStatement.setString(1, image.getFileName());
            preparedStatement.setString(2, image.getFilePath());
            preparedStatement.executeUpdate();
            
            try (ResultSet generatedKeys = preparedStatement.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    image.setId(generatedKeys.getInt(1));
                }
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    // Retrieve an image by its ID
    public Image getImage(int id) {
        Image image = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_IMAGE_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String fileName = rs.getString("file_name");
                String filePath = rs.getString("file_path");
                image = new Image(id, fileName, filePath);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return image;
    }

    // Retrieve all image IDs
    public List<Integer> getAllImageIds() {
        List<Integer> imageIds = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_IMAGE_IDS);
             ResultSet rs = preparedStatement.executeQuery()) {

            while (rs.next()) {
                imageIds.add(rs.getInt("id"));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return imageIds;
    }

    // Update image details in the database
    public void updateImage(Image image) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_IMAGE_SQL)) {
            preparedStatement.setString(1, image.getFileName());
            preparedStatement.setString(2, image.getFilePath());
            preparedStatement.setInt(3, image.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    // Print SQL exceptions
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
