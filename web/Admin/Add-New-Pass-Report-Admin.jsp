<%-- 
    Document   : Add-New-Pass-Report-Admin
    Created on : May 2, 2024, 6:52:39 PM
    Author     : User
--%>

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
        
        <label for="l_id">Lecturer ID:</label>
        <input type="text" id="l_id" name="l_id" required><br><br>
        
        <label for="pro_title">Project Title:</label>
        <input type="text" id="pro_title" name="pro_title" required><br><br>
        
        <label for="session">Session (yyyy-MM-dd):</label>
        <input type="text" id="session" name="session" required><br><br>
        
        <input type="submit" value="Add Report">
    </form>
</body>
</html>