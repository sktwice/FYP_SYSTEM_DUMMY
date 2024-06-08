package com.fyp.LecturerList;

import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.fyp.model.bean.Lecturer;


public class UpdateLecturerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private LecturerListDAO lecturerDAO;

    public void init() {
        lecturerDAO = new LecturerListDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws  IOException, ServletException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws  IOException, ServletException {


        try{
                     updateLecturer(request, response);
                     
        }catch(SQLException e){
        e.printStackTrace();
        }
        

}


private void updateLecturer(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException {
    
    int originalId = Integer.parseInt(request.getParameter("lid"));
    int newlId = Integer.parseInt(request.getParameter("id"));
    String lName = request.getParameter("lName");
    String position = request.getParameter("position");
    String email = request.getParameter("email");

    Lecturer existingLecturer = lecturerDAO.selectLecturer(originalId);
    System.out.println("Existing Lecturer: " + existingLecturer);

    if (existingLecturer != null) {
        // Preserve existing data that is not being updated
        int fId = existingLecturer.getfId();
        int loginId = existingLecturer.getLoginId();
        int adminId = existingLecturer.getAdminId();
        String iImage = existingLecturer.getiImage();
        int phoneNum = existingLecturer.getPhoneNum();
        String sCourse = existingLecturer.getsCourse();

        // Update lecturer's ID
        existingLecturer.setlId(newlId);

        // Create an updated lecturer object with the new data
        Lecturer updatedLecturer = new Lecturer(0, fId, loginId, adminId, position, iImage, lName, phoneNum, email, sCourse);

        // Update the lecturer
        boolean isUpdated = lecturerDAO.updateLecturer(originalId, updatedLecturer);

        if (isUpdated) {
            response.sendRedirect("LecturerListServlet");
        } else {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to update lecturer.");
        }
    } else {
        response.sendError(HttpServletResponse.SC_NOT_FOUND, "Lecturer not found");
    }
}


}
