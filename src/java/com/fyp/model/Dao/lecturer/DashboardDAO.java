package com.fyp.model.Dao.lecturer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DashboardDAO {

    public int getTotalStudents() throws ClassNotFoundException {
        int totalStudents = 0;

        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish a connection to the database
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample?useSSL=false", "root", "faris161102");
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT COUNT(*) AS total FROM student")) {

            // Execute the query and retrieve the result set
            ResultSet rs = preparedStatement.executeQuery();
            
            // If there is a result, get the total number of students
            if (rs.next()) {
                totalStudents = rs.getInt("total");
            }
        } catch (SQLException e) {
            printSQLException(e);
        }

        return totalStudents;
    }

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
