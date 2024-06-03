package com.fyp.pastreport;

import com.fyp.model.bean.PdfFile;
import com.fyp.model.bean.pastReport;
import com.fyp.model.bean.Lecturer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AddPastReportDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/fyp?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";
    private Connection jdbcConnection;

    public List<Lecturer> listLecturer() throws SQLException {
        List<Lecturer> listLecturer = new ArrayList<>();
        String sql = "SELECT * FROM lecturer";
        connect();

        try (PreparedStatement statement = jdbcConnection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int l_id = resultSet.getInt("l_id");
                int f_id = resultSet.getInt("f_id");
                int login_id = resultSet.getInt("login_id");
                int admin_id = resultSet.getInt("admin_id");
                String position = resultSet.getString("position");
                String l_image = resultSet.getString("l_image");
                String l_name = resultSet.getString("l_name");
                int phone_num = resultSet.getInt("phone_num");
                String email = resultSet.getString("email");
                String l_course = resultSet.getString("l_course");

                Lecturer lecturer = new Lecturer(l_id, f_id, login_id, admin_id, position, l_image, l_name, phone_num, email, l_course);
                listLecturer.add(lecturer);
            }
        } finally {
            disconnect();
        }

        return listLecturer;
    }

    protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        }
    }

    protected void disconnect() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }

    public void addPdfFile(PdfFile pdf) throws SQLException {
        String pdfSql = "INSERT INTO pdf_files (file_name, file_path) VALUES (?, ?)";
        connect();

        try {
            jdbcConnection.setAutoCommit(false);

            try (PreparedStatement statementPDF = jdbcConnection.prepareStatement(pdfSql)) {
                statementPDF.setString(1, pdf.getFileName());
                ///statementPDF.setString(2, pdf.getPdfPath());
                statementPDF.executeUpdate();
            }

            jdbcConnection.commit();
        } catch (SQLException ex) {
            jdbcConnection.rollback();
            throw new SQLException(ex);
        } finally {
            jdbcConnection.setAutoCommit(true);
            disconnect();
        }
    }

    public void addPastReport(pastReport ps) throws SQLException {
        String sqlPastReport = "INSERT INTO past_project (pro_id, student_id, l_id, pro_title, session) VALUES (?, ?, ?, ?, ?)";
        connect();

        try {
            jdbcConnection.setAutoCommit(false);

            try (PreparedStatement statementRP = jdbcConnection.prepareStatement(sqlPastReport)) {
                statementRP.setInt(1, ps.getProId());
                statementRP.setInt(2, ps.getStudentId());
                statementRP.setInt(3, ps.getLId());
                statementRP.setString(4, ps.getProTitle());
                statementRP.setString(5, ps.getSession());
                statementRP.executeUpdate();
            }

            jdbcConnection.commit();
        } catch (SQLException ex) {
            jdbcConnection.rollback();
            throw new SQLException(ex);
        } finally {
            jdbcConnection.setAutoCommit(true);
            disconnect();
        }
    }
}
