package com.fyp.LecturerList;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.fyp.model.bean.Lecturer;

public class LecturerListDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/fyp?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String INSERT_LECT_SQL = "INSERT INTO lecturer (l_id, f_id, login_id, admin_id, position, l_image, l_name, phone_num, email, l_course) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String SELECT_LECT_BY_ID = "SELECT * FROM lecturer WHERE l_id = ?";
    private static final String SELECT_ALL_LECT = "SELECT * FROM lecturer";
    private static final String DELETE_LECT_SQL = "DELETE FROM lecturer WHERE l_id = ?";
    private static final String UPDATE_LECT_SQL = "UPDATE lecturer SET f_id = ?, login_id = ?, admin_id = ?, position = ?, l_image = ?, l_name = ?, phone_num = ?, email = ?, l_course = ? WHERE l_id = ?";


    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertLecturer(Lecturer lecturer) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_LECT_SQL)) {
            preparedStatement.setInt(1, lecturer.getlId());
            preparedStatement.setInt(2, lecturer.getfId());
            preparedStatement.setInt(3, lecturer.getLoginId());
            preparedStatement.setInt(4, lecturer.getAdminId());
            preparedStatement.setString(5, lecturer.getPosition());
            preparedStatement.setString(6, lecturer.getiImage());
            preparedStatement.setString(7, lecturer.getlName());
            preparedStatement.setInt(8, lecturer.getPhoneNum());
            preparedStatement.setString(9, lecturer.getEmail());
            preparedStatement.setString(10, lecturer.getsCourse());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public Lecturer selectLecturer(int lId) {
        Lecturer lecturer = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_LECT_BY_ID)) {
            preparedStatement.setInt(1, lId);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int fId = rs.getInt("f_id");
                int loginId = rs.getInt("login_id");
                int adminId = rs.getInt("admin_id");
                String position = rs.getString("position");
                String iImage = rs.getString("l_image");
                String lName = rs.getString("l_name");
                int phoneNum = rs.getInt("phone_num");
                String email = rs.getString("email");
                String sCourse = rs.getString("l_course");
                lecturer = new Lecturer(lId, fId, loginId, adminId, position, iImage, lName, phoneNum, email, sCourse);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return lecturer;
    }

    public List<Lecturer> selectAllLecturers() {
        List<Lecturer> lecturers = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_LECT)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int lId = rs.getInt("l_id");
                int fId = rs.getInt("f_id");
                int loginId = rs.getInt("login_id");
                int adminId = rs.getInt("admin_id");
                String position = rs.getString("position");
                String iImage = rs.getString("l_image");
                String lName = rs.getString("l_name");
                int phoneNum = rs.getInt("phone_num");
                String email = rs.getString("email");
                String sCourse = rs.getString("l_course");
                lecturers.add(new Lecturer(lId, fId, loginId, adminId, position, iImage, lName, phoneNum, email, sCourse));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return lecturers;
    }

    public boolean deleteLecturer(int lId) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_LECT_SQL)) {
            statement.setInt(1, lId);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateLecturer(Lecturer lecturer) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_LECT_SQL)) {
            statement.setInt(1, lecturer.getfId());
            statement.setInt(2, lecturer.getLoginId());
            statement.setInt(3, lecturer.getAdminId());
            statement.setString(4, lecturer.getPosition());
            statement.setString(5, lecturer.getiImage());
            statement.setString(6, lecturer.getlName());
            statement.setInt(7, lecturer.getPhoneNum());
            statement.setString(8, lecturer.getEmail());
            statement.setString(9, lecturer.getsCourse());
            statement.setInt(10, lecturer.getlId());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
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
