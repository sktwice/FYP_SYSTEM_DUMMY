<%@ page import="java.util.List" %>
<%@ page import="com.fyp.model.bean.Lecturer" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Past Report</title>
</head>
<body>
    <h2>Add Past Report</h2>
    <form action="AddPastReportServlet" method="post">
        <label for="pro_id">Project ID:</label>
        <input type="text" id="pro_id" name="pro_id" required><br><br>
        
        <label for="student_id">Student ID:</label>
        <input type="text" id="student_id" name="student_id" required><br><br>
        
        <label for="l_id">Lecturer:</label>
        <select id="l_id" name="l_id" required>
            <option value="">Select Lecturer</option>
            <% 
                List<Lecturer> listLecturer = (List<Lecturer>) request.getAttribute("lecturerList");
                if (listLecturer != null) {
                    for (Lecturer l : listLecturer) {
                        out.println("<option value=\"" + l.getL_id() + "\">" + l.getL_name() + "</option>");
                    }
                } else {
                    out.println("<option value=\"\">No lecturers available</option>");
                }
            %>
        </select><br><br>
        
        <label for="pro_title">Project Title:</label>
        <input type="text" id="pro_title" name="pro_title" required><br><br>
        
        <label for="session">Session (yyyy-MM-dd):</label>
        <input type="text" id="session" name="session" required><br><br>
        
        <input type="submit" value="Add Report">
    </form>
</body>
</html>