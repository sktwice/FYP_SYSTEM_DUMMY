/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.Dao;

import com.fyp.connection.MySqlConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author User
 */
public class loginDao {
    private static final String SELECT_STUDENT_BY_USERNAME = "SELECT * FROM student WHERE username = ? AND password = ?";
    private static final String SELECT_STAFF_BY_USERNAME = "SELECT * FROM lecturer WHERE username = ? AND password = ?";
    private MySqlConnection dbConnection;

    public void init() {
        dbConnection = new MySqlConnection();
    }

    public boolean validateStudent(String username, String password) {
        return validateUser(SELECT_STUDENT_BY_USERNAME, username, password);
    }

    public boolean validateStaff(String username, String password) {
        return validateUser(SELECT_STAFF_BY_USERNAME, username, password);
    }

    private boolean validateUser(String query, String username, String password) {
        boolean isValid = false;
        try (Connection connection = dbConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();
            isValid = resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isValid;
    }
}