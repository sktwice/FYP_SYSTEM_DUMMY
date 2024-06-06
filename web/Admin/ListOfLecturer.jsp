<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.fyp.model.bean.Lecturer" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <title>Lecturer Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
        <div>
            <a href="#" class="navbar-brand">Lecturer Management App</a>
        </div>
        <ul class="navbar-nav">
            <li><a href="${pageContext.request.contextPath}/LecturerListServlet/list" class="nav-link">Lecturers</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container">
    <h2>Lecturer List</h2>
    <table class="table">
        <thead>
            <tr>
                <th>Lecturer ID</th>
                <th>Name</th>
                <th>Position</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="lecturer" items="${listLecturer}">
                <tr>
                    <td>${lecturer.lId}</td>
                    <td>${lecturer.lName}</td>
                    <td>${lecturer.position}</td>
                    <td>${lecturer.email}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/editLecturer?id=${lecturer.lId}" class="btn btn-info">Edit</a>
                        <a href="${pageContext.request.contextPath}/deleteLecturer?id=${lecturer.lId}" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
