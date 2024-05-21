/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.Dao.login;

import com.fyp.model.bean.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {

    public boolean validate(login loginBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp?useSSL=false", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement("select login_id, category from login where username = ? and password = ?")) {

            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());

            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                loginBean.setCategory(rs.getString("category")); // Retrieve category from database
                loginBean.setLoginId(rs.getInt("login_id")); // Retrieve loginId from database
                status = true;
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return status;
    }

    public String getLecturerPosition(int loginId) throws ClassNotFoundException {
        String position = null;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp?useSSL=false", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT position FROM lecturer WHERE login_id = ?")) {
            
            preparedStatement.setInt(1, loginId);

            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                position = rs.getString("position");
            }
        } catch (SQLException e) {
            printSQLException(e);
        }

        return position;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
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
