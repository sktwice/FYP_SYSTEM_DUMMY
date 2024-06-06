<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fyp.model.bean.Scope" %>

<html>
<head>
    <title>Scope List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {background-color: #f5f5f5;}
        .add-scope-btn {
            margin-bottom: 15px;
            display: flex;
            justify-content: flex-end;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="add-scope-btn">
      <a href="Admin/Add-New-Scope-Admin.jsp" class="btn btn-primary">Add New Scope</a>
    </div>
    <h2>Scope List</h2>
    <table class="table">
        <thead>
            <tr>
                <th>Scope ID</th>
                <th>Scope Name</th>
                <th>Program</th>
                <th>Session</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="scope" items="${scopeList}">
                <tr>
                    <td>${scope.scopeId}</td>
                    <td>${scope.scopeName}</td>
                    <td>${scope.program}</td>
                    <td>${scope.session}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
