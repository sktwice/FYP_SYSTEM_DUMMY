<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.fyp.model.bean.Lecturer" %>

<html>
<head>
    <title>Lecturer Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <c:set var="lecturer" value="${requestScope.lecturer}" />
            <c:set var="isEdit" value="${not empty lecturer}" />
            <form action="${isEdit ? 'LecturerListServlet/update' : 'LecturerListServlet/insert'}" method="post">
                <c:if test="${isEdit}">
                    <input type="hidden" name="id" value="${lecturer.lId}" />
                </c:if>
                <h2>${isEdit ? "Edit Lecturer" : "Add New Lecturer"}</h2>
                <fieldset class="form-group">
                <label>Lecturer ID</label>
                <input type="text" value="${isEdit ? lecturer.lId : ''}" class="form-control" name="lId" required="required">
                </fieldset>
                <fieldset class="form-group">
                    <label>Lecturer Name</label>
                    <input type="text" value="${isEdit ? lecturer.lName : ''}" class="form-control" name="lName" required="required">
                </fieldset>
                <fieldset class="form-group">
                    <label>Position</label>
                    <input type="text" value="${isEdit ? lecturer.position : ''}" class="form-control" name="position">
                </fieldset>
                <fieldset class="form-group">
                    <label>Email</label>
                    <input type="text" value="${isEdit ? lecturer.email : ''}" class="form-control" name="email">
                </fieldset>
                <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
