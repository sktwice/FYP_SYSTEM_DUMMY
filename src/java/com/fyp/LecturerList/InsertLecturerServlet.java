package com.fyp.LecturerList;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import com.fyp.model.bean.Lecturer;
import com.fyp.model.bean.Faculty;
import com.fyp.LecturerList.LecturerListDAO;

public class InsertLecturerServlet extends HttpServlet {

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
                    
                   // HttpSession session = request.getSession();
                    //Faculty faculty = lecturerDAO.getFacultybyId(faculty.getfId());
                   // if(faculty != null ){
                     //session.setAttribute("f_id",faculty.getfId());}
                    insertLecturer(request, response);
                     
        }catch(SQLException e){
        e.printStackTrace();
        }
        

}

     


private void insertLecturer(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException {
    int lId = Integer.parseInt(request.getParameter("lId"));
    Lecturer existingLecturer = lecturerDAO.selectLecturer(lId);
   
   
    if (existingLecturer != null) {
        String lName = request.getParameter("lName");
        String position = request.getParameter("position");
        
        int fId = existingLecturer.getfId();
        request.setAttribute("f_id", fId);
        
        int adminId = existingLecturer.getAdminId();
        request.setAttribute("admin_id", adminId);
       
        String email = request.getParameter("email");

        Lecturer newLecturer = new Lecturer(lId, fId, 0, adminId, position, "", lName, 0, email, "");
        lecturerDAO.insertLecturer(newLecturer);
        response.sendRedirect("LecturerListServlet");
    } else 
    {
        System.out.println("Existing lecturer is null for ID: " + lId);
    }
}


}




