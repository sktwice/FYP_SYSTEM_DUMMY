<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Add New Scope</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2>Add New Scope</h2>
    <form action="addScope" method="post">
        <div class="form-group">
            <label for="scopeId">Scope ID</label>
            <input type="number" class="form-control" id="scopeId" name="scopeId" required>
        </div>
        <div class="form-group">
            <label for="scopeName">Scope Name</label>
            <input type="text" class="form-control" id="scopeName" name="scopeName" required>
        </div>
        <div class="form-group">
            <label for="program">Program</label>
            <input type="text" class="form-control" id="program" name="program" required>
        </div>
        <div class="form-group">
            <label for="session">Session</label>
            <input type="text" class="form-control" id="session" name="session" required>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
