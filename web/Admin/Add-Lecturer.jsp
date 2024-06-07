<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="com.fyp.model.bean.Faculty" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Register Lecturer</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        /* Your CSS styles */
    </style>
</head>
<body>
    <div class="container">
        <h2>Register Lecturer</h2>
        <form action="RegisterLecturerServlet" method="post">
            <!-- Other input fields -->

            <input type="hidden" id="admin_id" name="admin_id" value="${sessionScope.admin_id}">

            <!-- Other input fields -->

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <label for="f_id">Faculty:</label>
            <select id="f_id" name="f_id" required>
                <option value="">Select Faculty and Course</option>
                <c:forEach var="faculty" items="${facultyList}">
                    <option value="${faculty.fId}">${faculty.fName} :- ${faculty.fCourse}</option>
                </c:forEach>
            </select><br><br>

            <label for="l_course">Lecturer Course:</label>
            <select id="l_course" name="l_course" required>
                <option value="">Select Course</option>
                <c:forEach var="course" items="${courseList}">
                    <option value="${course}">${course}</option>
                </c:forEach>
            </select><br><br>

           <label for="position">Position:</label>
<select id="position" name="position" required>
    <option value="">Select Position</option>
    <option value="N/A">N/A</option>
    <option value="Supervisor">Supervisor</option>
    <option value="Examiner">Examiner</option>
</select><br><br>

            <label for="l_image">Image Path:</label>
            <input type="text" id="l_image" name="l_image" required><br><br>

            <label for="l_name">Lecturer Name:</label>
            <input type="text" id="l_name" name="l_name" required><br><br>

            <label for="phone_num">Phone Number:</label>
            <input type="text" id="phone_num" name="phone_num" required><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
