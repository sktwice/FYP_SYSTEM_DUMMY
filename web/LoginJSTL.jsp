<%-- 
    Document   : LoginJSTL
    Created on : May 10, 2024, 1:01:05â¯AM
    Author     : Acer
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.fyp.model.bean" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>

<c:choose>
    <c:when test="${param.username eq 'student'}">
        <c:redirect url="student_dashboard.jsp" />
    </c:when>
    <c:when test="${param.username eq 'lecturer'}">
        <c:choose>
            <c:when test="${param.position eq 'examiner'}">
                <c:redirect url="examiner_dashboard.jsp" />
            </c:when>
            <c:when test="${param.position eq 'supervisor'}">
                <c:redirect url="supervisor_dashboard.jsp" />
            </c:when>
            <c:otherwise>
                <c:redirect url="lecturer_dashboard.jsp" />
            </c:otherwise>
        </c:choose>
    </c:when>
    <c:when test="${param.username eq 'admin'}">
        <c:redirect url="admin_dashboard.jsp" />
    </c:when>
    <c:otherwise>
        <p style="color: red;">Invalid access. Please log in with valid credentials.</p>
    </c:otherwise>
</c:choose>

</body>
</html>