/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.Dao.lecturer;

import com.fyp.connection.MySqlConnection;
import jakarta.servlet.ServletException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DashboardLecturerDAO {

    public int getTotalStudentCount() throws ServletException {
        int totalCount = 0;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            // Establish connection
            connection = new MySqlConnection().getConnection();
            // Query to get total count
            String query = "SELECT COUNT(*) AS total FROM student";
            // Prepare statement
            preparedStatement = connection.prepareStatement(query);
            // Execute query
            resultSet = preparedStatement.executeQuery();
            // Retrieve total count
            if (resultSet.next()) {
                totalCount = resultSet.getInt("total");
            }
        } catch (Exception e) {
        throw new ServletException("Checkk error", e);
        }finally {
            // Close connections
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return totalCount;
    }
}