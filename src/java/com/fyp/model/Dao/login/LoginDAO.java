package com.fyp.model.Dao.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.fyp.model.bean.login;

public class LoginDAO {

    public boolean validate(login loginBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample?useSSL=false", "root", "faris161102");
            PreparedStatement preparedStatement = connection.prepareStatement("select username, password, category from login where username = ? and password = ?")) {

            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());

            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                loginBean.setCategory(rs.getString("category")); // Retrieve category from database
                status = true;
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return status;
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
