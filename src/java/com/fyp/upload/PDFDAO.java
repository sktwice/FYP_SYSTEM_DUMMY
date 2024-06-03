
package com.fyp.upload;


import com.fyp.model.bean.PdfFile;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PDFDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/sample?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "faris161102";

    private static final String INSERT_PDF_SQL = "INSERT INTO pdf_files (file_name, file_path) VALUES (?, ?)";
    private static final String SELECT_PDF_BY_ID = "SELECT id, file_name, file_path FROM pdf_files WHERE id = ?";
    private static final String SELECT_ALL_PDF_IDS = "SELECT id FROM pdf_files";

    private static final Logger logger = Logger.getLogger(PDFDAO.class.getName());

    protected Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException e) {
            logger.log(Level.SEVERE, "Error loading JDBC driver", e);
            throw new SQLException("Error loading JDBC driver", e);
        }
        return connection;
    }

    public void savePdfFile(PdfFile pdfFile) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PDF_SQL)) {
            preparedStatement.setString(1, pdfFile.getFileName());
            preparedStatement.setString(2, pdfFile.getFilePath());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Error saving PDF file", e);
            throw new SQLException("Error saving PDF file", e);
        }
    }

    public PdfFile getPdfFile(int id) {
        PdfFile pdfFile = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PDF_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String fileName = rs.getString("file_name");
                String filePath = rs.getString("file_path");
                pdfFile = new PdfFile();
                pdfFile.setId(id);
                pdfFile.setFileName(fileName);
                pdfFile.setFilePath(filePath);
            }
        } catch (SQLException e) {
            logger.log(Level.SEVERE, "Error retrieving PDF file by ID", e);
        }
        return pdfFile;
    }

    // Add method to get all PDF file IDs
public List<Integer> getAllPdfFileIds() {
    List<Integer> pdfFileIds = new ArrayList<>();
    try (Connection connection = getConnection();
         PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PDF_IDS);
         ResultSet rs = preparedStatement.executeQuery()) {
        while (rs.next()) {
            pdfFileIds.add(rs.getInt("id"));
        }
    } catch (SQLException e) {
        logger.log(Level.SEVERE, "Error retrieving all PDF file IDs", e);
    }
    return pdfFileIds;
}

}
