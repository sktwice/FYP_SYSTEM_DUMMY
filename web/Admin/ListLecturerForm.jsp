<%@ page import="com.fyp.model.bean.Faculty" %>
<%@ page import="com.fyp.model.bean.Lecturer" %>
<html>
<head>
    <title>Edit Lecturer</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <form action="updateLecturer" method="post">
                <% if (request.getAttribute("lecturer") != null) { %>
                    <h2>Edit Lecturer</h2>
                    <fieldset class="form-group">
                        <label>Lecturer ID</label>
                        <input type="text" value="<%= ((Lecturer) request.getAttribute("lecturer")).getlId() %>" class="form-control" name="id" required="required">
                    </fieldset>
                    <fieldset class="form-group">
                        <label>Lecturer Name</label>
                        <input type="text" value="<%= ((Lecturer) request.getAttribute("lecturer")).getlName() %>" class="form-control" name="lName" required="required">
                    </fieldset>
                    <fieldset class="form-group">
                        <label>Position</label>
                        <input type="text" value="<%= ((Lecturer) request.getAttribute("lecturer")).getPosition() %>" class="form-control" name="position">
                    </fieldset>
                    <fieldset class="form-group">
                        <label>Email</label>
                        <input type="text" value="<%= ((Lecturer) request.getAttribute("lecturer")).getEmail() %>" class="form-control" name="email">
                    </fieldset>
                    <input type="hidden" name="lid" value="<%= ((Lecturer) request.getAttribute("lecturer")).getlId() %>" />
                    <input type="hidden" name="f_id" value="<%= ((Lecturer) request.getAttribute("lecturer")).getfId() %>" />
                    <button type="submit" class="btn btn-success">Save</button>
                <% } %>
            </form>
        </div>
    </div>
</div>
</body>
</html>
